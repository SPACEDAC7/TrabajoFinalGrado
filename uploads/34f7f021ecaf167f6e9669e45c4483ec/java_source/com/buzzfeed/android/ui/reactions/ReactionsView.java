/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.drawable.Drawable
 *  android.os.AsyncTask
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Handler
 *  android.os.Looper
 *  android.util.AttributeSet
 *  android.view.Display
 *  android.view.LayoutInflater
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.ViewParent
 *  android.view.WindowManager
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.AnimationUtils
 *  android.view.animation.GridLayoutAnimationController
 *  android.view.animation.LayoutAnimationController
 *  android.widget.AbsListView
 *  android.widget.AbsListView$LayoutParams
 *  android.widget.ArrayAdapter
 *  android.widget.GridView
 *  android.widget.ListAdapter
 *  android.widget.RelativeLayout
 *  android.widget.Toast
 *  android.widget.ToggleButton
 *  okhttp3.ResponseBody
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.ui.reactions;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.GridLayoutAnimationController;
import android.view.animation.LayoutAnimationController;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.database.BFDatabaseManager;
import com.buzzfeed.android.database.BFReactionsData;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.ReactionsServiceHelper;
import com.buzzfeed.toolkit.util.AnimationListener;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Response;

public class ReactionsView
extends RelativeLayout
implements View.OnClickListener {
    private static final int HATE_ID = 0;
    private static final int LOVE_ID = 1;
    private static final int MAX_NUMBER_SELECTED = 3;
    private static final String TAG = ReactionsView.class.getSimpleName();
    private static HashMap<String, HashSet<Badge>> badgeTracker = new HashMap();
    private ReactionGridAdapter adapter;
    private final ArrayList<BadgeInfo> badgeInfoList = new ArrayList();
    private BFDatabaseManager dbm;
    private Animation fadeIn;
    private Animation fadeOut;
    private GridView gridView;
    private boolean loveHateSelected = false;
    private BuzzUser mBuzzUser;
    private PostContent mContent;
    private final Context mContext;
    private int numberSelected;
    private final Resources resources;
    private String singleUseCsrfToken = null;
    private GridLayoutAnimationController slidUpAnimationController;

    public ReactionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ReactionsView.inflate((Context)context, (int)2130903186, (ViewGroup)this);
        this.resources = context.getResources();
        this.mContext = context.getApplicationContext();
        this.updateBadgeInfoMap();
        this.setBackgroundColor(this.getResources().getColor(2131755031));
        this.dbm = BFDatabaseManager.getInstance(this.mContext);
        this.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                ReactionsView.this.hide();
                return true;
            }
        });
        this.setupGrid();
        this.setupAnimations();
    }

    static /* synthetic */ BFDatabaseManager access$700(ReactionsView reactionsView) {
        return reactionsView.dbm;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void addBadge(String string2, Badge badge) {
        HashMap<String, HashSet<Badge>> hashMap = badgeTracker;
        synchronized (hashMap) {
            HashSet<Badge> hashSet;
            HashSet hashSet2 = hashSet = badgeTracker.get(string2);
            if (hashSet == null) {
                hashSet2 = new HashSet();
                badgeTracker.put(string2, hashSet2);
            }
            hashSet2.add(badge);
            return;
        }
    }

    @TargetApi(value=21)
    private View.OnTouchListener createRippleListener() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new View.OnTouchListener(){

                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if ((motionEvent.getAction() & 255) == 0 && (view = view.getBackground()) != null) {
                        view.setHotspot(motionEvent.getX(), motionEvent.getY());
                    }
                    return false;
                }
            };
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean displayView() {
        boolean bl = true;
        this.mBuzzUser = BuzzUser.getInstance(this.mContext);
        if (this.mContent == null) return false;
        if (this.mBuzzUser == null) return false;
        if (!this.mBuzzUser.isLogin()) return false;
        this.resetReactionButtons();
        Iterator iterator = this.findViewById(2131820963);
        if (VersionUtil.hasLollipop()) {
            int n2 = UIUtil.getNavBarHeight(this.getContext());
            int n3 = 0;
            int n4 = n2;
            int n5 = n3;
            if (!DeviceUtil.isTablet(this.getContext())) {
                n4 = n2;
                n5 = n3;
                if (!UIUtil.isPortrait(this.getContext())) {
                    n4 = 0;
                    n5 = UIUtil.getScreenWidth();
                }
            }
            iterator.setPadding(0, UIUtil.getActionBarHeight(this.getContext()) + UIUtil.getStatusBarHeight(this.getContext()), n5, n4);
        } else {
            iterator.setPadding(0, UIUtil.getActionBarHeight(this.getContext()), 0, 0);
        }
        this.startAnimation(this.fadeIn);
        this.gridView.setLayoutAnimation((LayoutAnimationController)this.slidUpAnimationController);
        iterator = this.getBadges(this.mContent.getId());
        boolean bl2 = bl;
        if (iterator == null) return bl2;
        iterator = iterator.iterator();
        do {
            bl2 = bl;
            if (!iterator.hasNext()) return bl2;
            Badge badge = (Badge)((Object)iterator.next());
            if (badge == Badge.love || badge == Badge.hate) {
                this.loveHateSelected = true;
                continue;
            }
            ++this.numberSelected;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private HashSet<Badge> getBadges(String object) {
        HashMap<String, HashSet<Badge>> hashMap = badgeTracker;
        synchronized (hashMap) {
            return badgeTracker.get(object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void postReactions(String string2, BadgeInfo badgeInfo, Badge badge, View view) {
        Activity activity = (Activity)this.getContext();
        if (string2 == null) {
            Toast.makeText((Context)activity, (CharSequence)activity.getString(2131296494), (int)0).show();
            return;
        }
        if (string2.equals("invalid_session")) {
            this.mBuzzUser.logout(activity);
            activity.startActivityForResult(new Intent((Context)activity, (Class)BuzzLoginActivity.class), 0);
            return;
        }
        this.singleUseCsrfToken = string2;
        if (badgeInfo.loveHateId != null && badge != null) {
            if (this.loveHateSelected) return;
            {
                this.loveHateSelected = true;
                view.setEnabled(false);
                new ReactionVotingTask(view, badgeInfo).execute((Object[])new Void[]{null, null, null});
                this.dbm.bfReactionsData.putBuzzReaction(this.mContent.getId(), String.valueOf(badgeInfo.loveHateId), 0);
                return;
            }
        }
        if (badgeInfo.submitId == null) return;
        {
            if (this.numberSelected < 3 && view.getTag() == null) {
                ++this.numberSelected;
                view.setEnabled(false);
                new ReactionVotingTask(view, badgeInfo).execute((Object[])new Void[]{null, null, null});
                this.dbm.bfReactionsData.putBuzzReaction(this.mContent.getId(), String.valueOf(badgeInfo.submitId), 0);
                return;
            }
        }
        Toast.makeText((Context)activity, (CharSequence)activity.getString(2131296490), (int)0).show();
    }

    private void resetReactionButtons() {
        this.numberSelected = 0;
        this.loveHateSelected = false;
        this.updateBadgeInfoMap();
        if (this.adapter != null) {
            this.adapter.notifyDataSetChanged();
        }
    }

    private void setupAnimations() {
        this.fadeIn = AnimationUtils.loadAnimation((Context)this.getContext(), (int)2130968595);
        this.fadeIn.setAnimationListener(new Animation.AnimationListener(){

            public void onAnimationEnd(Animation animation) {
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
                ReactionsView.this.setVisibility(0);
            }
        });
        this.fadeOut = AnimationUtils.loadAnimation((Context)this.getContext(), (int)2130968597);
        this.fadeOut.setAnimationListener((Animation.AnimationListener)new AnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                ReactionsView.this.setVisibility(8);
            }
        });
        this.slidUpAnimationController = new GridLayoutAnimationController(AnimationUtils.loadAnimation((Context)this.getContext(), (int)2130968604), 0.2f, 0.2f);
    }

    private void setupGrid() {
        this.gridView = (GridView)this.findViewById(2131820964);
        this.adapter = new ReactionGridAdapter();
        this.gridView.setAdapter((ListAdapter)this.adapter);
        this.gridView.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 2) {
                    return true;
                }
                return false;
            }
        });
    }

    private void showResults(boolean bl, String string2) {
        Activity activity = (Activity)this.getContext();
        if (bl) {
            BuzzFeedTracker.getInstance().trackEvent(this.resources.getString(2131296764), this.resources.getString(2131296723), string2.toLowerCase(Locale.US), 0);
            DustbusterClient.getInstance().trackReaction(this.mContent, string2.toUpperCase(Locale.US));
            return;
        }
        Toast.makeText((Context)activity, (CharSequence)String.format(activity.getString(2131296489), string2), (int)0).show();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive exception aggregation
     */
    private boolean submitToServer(String var1_1, String var2_4) {
        var4_6 = ReactionsView.TAG + ".submitToServer";
        var6_7 = false;
        if (this.singleUseCsrfToken == null) {
            var3_8 = BuzzUtils.getCsrfToken(this.mBuzzUser);
lbl5: // 2 sources:
            do {
                if (var3_8 != null) {
                    if (var1_1 != null) {
                        var1_1 = new ReactionsServiceHelper.ReactionRequestParamBuilder().sessionKey(this.mBuzzUser.getSessionKey()).userToken(var3_8).category("love_or_hate").uri(this.mContent.getUri()).buzzId(this.mContent.getId()).value((String)var1_1).build();
                        var6_7 = new JSONObject(((ResponseBody)NetworkService.getReactionsService().postReactionToServer((Map<String, String>)var1_1).execute().body()).string()).getBoolean("success");
                    }
lbl11: // 4 sources:
                    do {
                        if (var2_4 != null) {
                            var1_1 = new ReactionsServiceHelper.ReactionRequestParamBuilder().sessionKey(this.mBuzzUser.getSessionKey()).userToken(var3_8).category("badge").uri(this.mContent.getUri()).buzzId(this.mContent.getId()).badgeId(var2_4).build();
                            var1_1 = new JSONObject(((ResponseBody)NetworkService.getReactionsService().postReactionToServer((Map<String, String>)var1_1).execute().body()).string()).getJSONObject("badge_results").getJSONObject(var2_4);
                            var6_7 = var1_1.getBoolean("success");
                        }
                        return var6_7;
                        break;
                    } while (true);
                }
                break;
                break;
            } while (true);
        } else {
            var3_8 = new String(this.singleUseCsrfToken);
            this.singleUseCsrfToken = null;
            ** continue;
            catch (Exception var1_2) {
                LogUtil.e(var4_6, "Error: " + var1_2.getMessage());
                var6_7 = false;
                ** continue;
            }
            {
                catch (JSONException var2_5) {
                    try {
                        var5_9 = var1_1.getInt("success");
                        if (var5_9 == 1) {
                            return true;
                        }
                        return false;
                    }
                    catch (Exception var1_3) {
                        LogUtil.e(var4_6, "Error: " + var1_3.getMessage());
                        return false;
                    }
                }
            }
        }
        LogUtil.e(var4_6, "Error: No CSRF Token was returned");
        return false;
    }

    private void updateBadgeInfoMap() {
        this.badgeInfoList.clear();
        String string2 = EnvironmentConfig.getEdition(this.mContext);
        if (string2.startsWith(this.getResources().getString(2131296843))) {
            this.badgeInfoList.add(new BadgeInfo(Badge.fail, 2130837793, 49, null, this.resources.getString(2131296409)));
            this.badgeInfoList.add(new BadgeInfo(Badge.omg, 2130837817, 14, null, this.resources.getString(2131296411)));
            this.badgeInfoList.add(new BadgeInfo(Badge.yass, 2130837831, 237, null, this.resources.getString(2131296663)));
            this.badgeInfoList.add(new BadgeInfo(Badge.lol, 2130837806, 12, null, this.resources.getString(2131296410)));
            this.badgeInfoList.add(new BadgeInfo(Badge.love, 2130837810, null, 1, this.resources.getString(2131296415)));
            this.badgeInfoList.add(new BadgeInfo(Badge.hate, 2130837799, null, 0, this.resources.getString(2131296414)));
            this.badgeInfoList.add(new BadgeInfo(Badge.cute, 2130837785, 16, null, this.resources.getString(2131296408)));
            this.badgeInfoList.add(new BadgeInfo(Badge.win, 2130837824, 47, null, this.resources.getString(2131296412)));
            this.badgeInfoList.add(new BadgeInfo(Badge.wtf, 2130837829, 13, null, this.resources.getString(2131296413)));
            this.badgeInfoList.add(new BadgeInfo(Badge.ew, 2130837791, 27, null, this.resources.getString(2131296662)));
            return;
        }
        if (string2.equals(this.getResources().getString(2131296836))) {
            this.badgeInfoList.add(new BadgeInfo(Badge.fail, 2130837795, 49, null, this.resources.getString(2131296409)));
            this.badgeInfoList.add(new BadgeInfo(Badge.omg, 2130837816, 14, null, this.resources.getString(2131296411)));
            this.badgeInfoList.add(new BadgeInfo(Badge.yass, 2130837831, 237, null, this.resources.getString(2131296663)));
            this.badgeInfoList.add(new BadgeInfo(Badge.lol, 2130837805, 12, null, this.resources.getString(2131296410)));
            this.badgeInfoList.add(new BadgeInfo(Badge.love, 2130837810, null, 1, this.resources.getString(2131296415)));
            this.badgeInfoList.add(new BadgeInfo(Badge.ew, 2130837791, 27, null, this.resources.getString(2131296662)));
            this.badgeInfoList.add(new BadgeInfo(Badge.wtf, 2130837829, 13, null, this.resources.getString(2131296413)));
            this.badgeInfoList.add(new BadgeInfo(Badge.cute, 2130837784, 16, null, this.resources.getString(2131296408)));
            this.badgeInfoList.add(new BadgeInfo(Badge.win, 2130837821, 47, null, this.resources.getString(2131296412)));
            this.badgeInfoList.add(new BadgeInfo(Badge.hate, 2130837799, null, 0, this.resources.getString(2131296414)));
            return;
        }
        if (string2.equals(this.getResources().getString(2131296835))) {
            this.badgeInfoList.add(new BadgeInfo(Badge.fail, 2130837794, 49, null, this.resources.getString(2131296409)));
            this.badgeInfoList.add(new BadgeInfo(Badge.omg, 2130837815, 14, null, this.resources.getString(2131296411)));
            this.badgeInfoList.add(new BadgeInfo(Badge.yass, 2130837831, 237, null, this.resources.getString(2131296663)));
            this.badgeInfoList.add(new BadgeInfo(Badge.lol, 2130837805, 12, null, this.resources.getString(2131296410)));
            this.badgeInfoList.add(new BadgeInfo(Badge.love, 2130837810, null, 1, this.resources.getString(2131296415)));
            this.badgeInfoList.add(new BadgeInfo(Badge.ew, 2130837791, 27, null, this.resources.getString(2131296662)));
            this.badgeInfoList.add(new BadgeInfo(Badge.wtf, 2130837829, 13, null, this.resources.getString(2131296413)));
            this.badgeInfoList.add(new BadgeInfo(Badge.cute, 2130837783, 16, null, this.resources.getString(2131296408)));
            this.badgeInfoList.add(new BadgeInfo(Badge.win, 2130837823, 47, null, this.resources.getString(2131296412)));
            this.badgeInfoList.add(new BadgeInfo(Badge.hate, 2130837799, null, 0, this.resources.getString(2131296414)));
            return;
        }
        if (string2.startsWith(this.getResources().getString(2131296827))) {
            this.badgeInfoList.add(new BadgeInfo(Badge.fail, 2130837793, 49, null, this.resources.getString(2131296409)));
            this.badgeInfoList.add(new BadgeInfo(Badge.omg, 2130837815, 14, null, this.resources.getString(2131296411)));
            this.badgeInfoList.add(new BadgeInfo(Badge.yass, 2130837831, 237, null, this.resources.getString(2131296663)));
            this.badgeInfoList.add(new BadgeInfo(Badge.lol, 2130837804, 12, null, this.resources.getString(2131296410)));
            this.badgeInfoList.add(new BadgeInfo(Badge.love, 2130837810, null, 1, this.resources.getString(2131296415)));
            this.badgeInfoList.add(new BadgeInfo(Badge.ew, 2130837791, 27, null, this.resources.getString(2131296662)));
            this.badgeInfoList.add(new BadgeInfo(Badge.wtf, 2130837829, 13, null, this.resources.getString(2131296413)));
            this.badgeInfoList.add(new BadgeInfo(Badge.cute, 2130837782, 16, null, this.resources.getString(2131296408)));
            this.badgeInfoList.add(new BadgeInfo(Badge.win, 2130837822, 47, null, this.resources.getString(2131296412)));
            this.badgeInfoList.add(new BadgeInfo(Badge.hate, 2130837799, null, 0, this.resources.getString(2131296414)));
            return;
        }
        this.badgeInfoList.add(new BadgeInfo(Badge.fail, 2130837793, 49, null, this.resources.getString(2131296409)));
        this.badgeInfoList.add(new BadgeInfo(Badge.omg, 2130837815, 14, null, this.resources.getString(2131296411)));
        this.badgeInfoList.add(new BadgeInfo(Badge.yass, 2130837831, 237, null, this.resources.getString(2131296663)));
        this.badgeInfoList.add(new BadgeInfo(Badge.lol, 2130837804, 12, null, this.resources.getString(2131296410)));
        this.badgeInfoList.add(new BadgeInfo(Badge.love, 2130837810, null, 1, this.resources.getString(2131296415)));
        this.badgeInfoList.add(new BadgeInfo(Badge.ew, 2130837791, 27, null, this.resources.getString(2131296662)));
        this.badgeInfoList.add(new BadgeInfo(Badge.wtf, 2130837829, 13, null, this.resources.getString(2131296413)));
        this.badgeInfoList.add(new BadgeInfo(Badge.cute, 2130837781, 16, null, this.resources.getString(2131296408)));
        this.badgeInfoList.add(new BadgeInfo(Badge.win, 2130837821, 47, null, this.resources.getString(2131296412)));
        this.badgeInfoList.add(new BadgeInfo(Badge.hate, 2130837799, null, 0, this.resources.getString(2131296414)));
    }

    public void hide() {
        if (this.getVisibility() == 0) {
            this.startAnimation(this.fadeOut);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void onClick(View view) {
        boolean bl = true;
        boolean bl2 = true;
        if (!(view.getParent() instanceof View)) return;
        if (this.mBuzzUser == null) return;
        if (!this.mBuzzUser.isLogin()) return;
        Object object = (View)view.getParent();
        if (object == null) return;
        if (object.getTag() == null) return;
        if (!(object.getTag() instanceof BadgeInfo)) return;
        object = (BadgeInfo)object.getTag();
        if (object.submitId != null && this.numberSelected >= 3) {
            object = (ToggleButton)view;
            if (((ToggleButton)view).isChecked()) {
                bl2 = false;
            }
            object.setChecked(bl2);
            Toast.makeText((Context)this.getContext(), (CharSequence)this.getContext().getString(2131296490), (int)0).show();
            return;
        }
        if (object.loveHateId != null && object.badge != null && this.loveHateSelected) {
            object = (ToggleButton)view;
            bl2 = !((ToggleButton)view).isChecked() ? bl : false;
            object.setChecked(bl2);
            Toast.makeText((Context)this.getContext(), (CharSequence)this.getContext().getString(2131296488), (int)0).show();
            return;
        }
        new Thread(new Runnable((BadgeInfo)object, view){
            final /* synthetic */ BadgeInfo val$badgeInfo;
            final /* synthetic */ View val$view;

            @Override
            public void run() {
                final String string2 = BuzzUtils.getCsrfTokenOrInvalidSession(ReactionsView.this.mBuzzUser, ReactionsView.this.getContext());
                new Handler(Looper.getMainLooper()).post(new Runnable(){

                    @Override
                    public void run() {
                        ReactionsView.this.postReactions(string2, 5.this.val$badgeInfo, 5.this.val$badgeInfo.badge, 5.this.val$view);
                    }
                });
            }

        }).start();
    }

    public void show(PostContent postContent) {
        this.mContent = postContent;
        if (this.displayView()) {
            return;
        }
        this.hide();
    }

    private static enum Badge {
        fail,
        omg,
        yass,
        lol,
        love,
        ew,
        wtf,
        cute,
        win,
        hate;
        

        private Badge() {
        }
    }

    private class BadgeInfo {
        Badge badge;
        Integer drawableId;
        Integer loveHateId;
        String name;
        Integer submitId;

        public BadgeInfo(Badge badge, Integer n2, Integer n3, Integer n4, String string2) {
            this.badge = badge;
            this.drawableId = n2;
            this.submitId = n3;
            this.loveHateId = n4;
            this.name = string2;
        }
    }

    private class ReactionGridAdapter
    extends ArrayAdapter<BadgeInfo> {
        public ReactionGridAdapter() {
            super(ReactionsView.this.mContext, 2130903101, (List)ReactionsView.this.badgeInfoList);
        }

        public int getCount() {
            if (ReactionsView.this.badgeInfoList == null) {
                return 0;
            }
            return ReactionsView.this.badgeInfoList.size();
        }

        public BadgeInfo getItem(int n2) {
            return (BadgeInfo)ReactionsView.this.badgeInfoList.get(n2);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public View getView(int n2, View object, ViewGroup viewGroup) {
            Object object2 = (LayoutInflater)this.getContext().getSystemService("layout_inflater");
            if (object == null) {
                object2 = object = object2.inflate(2130903101, null);
                if (Build.VERSION.SDK_INT >= 16) {
                    int n3;
                    int n4;
                    int n5;
                    int n6;
                    block9 : {
                        n4 = n5 = ((GridView)viewGroup).getColumnWidth();
                        n6 = ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay().getHeight() - UIUtil.getActionBarHeight(this.getContext());
                        if (!DeviceUtil.isTablet(this.getContext())) {
                            n3 = n6;
                            if (!UIUtil.isPortrait(this.getContext())) break block9;
                        }
                        n3 = n6 - UIUtil.getNavBarHeight(this.getContext());
                    }
                    n6 = n4;
                    if (n4 * 3 > n3) {
                        n6 = n3 / 3;
                    }
                    object.setLayoutParams((ViewGroup.LayoutParams)new AbsListView.LayoutParams(n5, n6));
                    object2 = object;
                }
            } else {
                object2 = object;
            }
            object = (ViewGroup)object2.findViewById(2131820764);
            viewGroup = (ToggleButton)object2.findViewById(2131820765);
            object.setVisibility(0);
            BadgeInfo badgeInfo = this.getItem(n2);
            if (badgeInfo == null) return object2;
            viewGroup.setBackgroundResource(badgeInfo.drawableId.intValue());
            object = ReactionsView.this.createRippleListener();
            if (object != null) {
                viewGroup.setOnTouchListener((View.OnTouchListener)object);
            }
            viewGroup.setOnClickListener((View.OnClickListener)ReactionsView.this);
            object2.setTag((Object)badgeInfo);
            object = ReactionsView.this.getBadges(ReactionsView.this.mContent.getId());
            if (object != null && object.contains((Object)badgeInfo.badge)) {
                object = badgeInfo.submitId != null ? badgeInfo.submitId : (badgeInfo.loveHateId != null ? badgeInfo.loveHateId : null);
                if (!ReactionsView.access$700((ReactionsView)ReactionsView.this).bfReactionsData.isReactionSelected(ReactionsView.this.mContent.getId(), String.valueOf(object))) return object2;
                viewGroup.setChecked(true);
                viewGroup.setEnabled(false);
                if (badgeInfo.badge != Badge.love) {
                    if (badgeInfo.badge != Badge.hate) return object2;
                }
                ReactionsView.this.loveHateSelected = true;
                return object2;
            }
            viewGroup.setChecked(false);
            viewGroup.setEnabled(true);
            viewGroup.setTag((Object)null);
            return object2;
        }
    }

    private class ReactionVotingTask
    extends AsyncTask<Void, Void, Void> {
        private String badgeId;
        private BadgeInfo badgeInfo;
        private boolean invalidSession;
        private String loveOrHate;
        private String name;
        private boolean successfulPost;
        private View view;

        public ReactionVotingTask(View view, BadgeInfo badgeInfo) {
            this.view = view;
            this.badgeInfo = badgeInfo;
            if (badgeInfo.loveHateId != null) {
                this.loveOrHate = String.valueOf(badgeInfo.loveHateId);
            }
            if (badgeInfo.submitId != null) {
                this.badgeId = String.valueOf(badgeInfo.submitId);
            }
            this.name = badgeInfo.name;
            this.invalidSession = false;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        protected /* varargs */ Void doInBackground(Void ... object) {
            object = BuzzUtils.getCsrfTokenOrInvalidSession(ReactionsView.this.mBuzzUser, ReactionsView.this.mContext);
            if (object == null) {
                this.successfulPost = false;
                do {
                    return null;
                    break;
                } while (true);
            }
            if (object.equals("invalid_session")) {
                this.invalidSession = true;
                return null;
            }
            this.successfulPost = ReactionsView.this.submitToServer(this.loveOrHate, this.badgeId);
            return null;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        protected void onPostExecute(Void void_) {
            void_ = (Activity)ReactionsView.this.getContext();
            if (void_ == null || void_.isFinishing()) return;
            if (!this.invalidSession) {
                ReactionsView.this.showResults(this.successfulPost, this.name);
                if (!this.successfulPost) return;
                Toast.makeText((Context)ReactionsView.this.getContext(), (CharSequence)ReactionsView.this.getContext().getString(2131296491), (int)0).show();
                this.view.setOnClickListener(null);
                ReactionsView.this.addBadge(ReactionsView.this.mContent.getId(), this.badgeInfo.badge);
                return;
            }
            BuzzUtils.showToastNotification((Activity)void_, void_.getString(2131296390), 0);
            ReactionsView.this.mBuzzUser.logout((Activity)void_);
            void_.startActivityForResult(new Intent((Context)void_, (Class)BuzzLoginActivity.class), 0);
        }

        protected void onPreExecute() {
        }
    }

}

