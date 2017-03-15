/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.content.ContentResolver
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.database.Cursor
 *  android.graphics.Bitmap
 *  android.graphics.BitmapFactory
 *  android.net.Uri
 *  android.os.AsyncTask
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Environment
 *  android.os.Handler
 *  android.os.IBinder
 *  android.os.Parcelable
 *  android.os.SystemClock
 *  android.provider.MediaStore
 *  android.provider.MediaStore$Images
 *  android.provider.MediaStore$Images$Media
 *  android.text.Editable
 *  android.text.TextUtils
 *  android.view.Menu
 *  android.view.MenuInflater
 *  android.view.MenuItem
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnTouchListener
 *  android.view.animation.Animation
 *  android.view.animation.Animation$AnimationListener
 *  android.view.animation.AnimationUtils
 *  android.view.inputmethod.InputMethodManager
 *  android.widget.AdapterView
 *  android.widget.AdapterView$OnItemClickListener
 *  android.widget.EditText
 *  android.widget.ImageView
 *  android.widget.TextView
 *  android.widget.TextView$BufferType
 *  okhttp3.MultipartBody
 *  okhttp3.MultipartBody$Part
 *  okhttp3.RequestBody
 *  okhttp3.ResponseBody
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.activity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.Toolbar;
import android.text.Editable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.BuzzLoginActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.comment.BuzzFeedComment;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.data.comment.CommentListCache;
import com.buzzfeed.android.data.comment.CommentListMapCache;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.util.BuzzImageUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.CommentServiceHelper;
import com.buzzfeed.toolkit.ui.view.CircularImageView;
import com.buzzfeed.toolkit.util.AnimationListener;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.MultipartRequestHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Response;

public class ContributionSubmitActivity
extends BaseActivity {
    private static final int CAMERA_PERMISSION_CODE = 101;
    private static final int CAMERA_PIC_REQUEST = 2;
    public static final String COMMENT_EXTRA_COMMENT_ID = "comment_id";
    private static final String FULL_PATH_KEY = "fullPath";
    private static final int GALLERY_IMAGE_SELECT = 1;
    private static final int GALLERY_PERMISSION_CODE = 100;
    private static final String IMAGE_CONTRIBUTION_FILE_DATA = "Filedata";
    private static final String IMAGE_CONTRIBUTION_TYPE = "image";
    private static final String JSON_PARAM_HEIGHT = "height";
    private static final String JSON_PARAM_IMAGE = "image";
    private static final String JSON_PARAM_WIDTH = "width";
    public static final String KEY_CONTENT = "KEY_CONTENT";
    public static final String KEY_CONTRIBUTE_RESULT = "contributeResult";
    public static final String KEY_CONTRIBUTION_JSON_UPLOADED = "uploaded";
    private static final String PARTIAL_TEXT_KEY = "partialText";
    private static final String PHOTO_URI_KEY = "photoUri";
    private static final String REQUEST_CODE_KEY = "requestCode";
    private static final String TAG = ContributionSubmitActivity.class.getSimpleName();
    private static final String UPLOAD_PATH_KEY = "uploadPath";
    private String buzzFeedDir = Environment.getExternalStorageDirectory().getAbsolutePath() + "/buzzfeed";
    private BuzzUser buzzUser;
    private PostContent content;
    private String errorMsg;
    private Animation fadeInOverlay;
    private Animation fadeOutOverlay;
    private String fullImagePath = null;
    private boolean hasImage = false;
    private CommentServiceHelper mCommentServiceHelper;
    private AlertDialog mCurrentAlertDialog;
    private BuzzFeedComment mNewComment;
    private MenuItem menuImage;
    private MenuItem menuImageDelete;
    private MenuItem menuSend;
    private View overlay;
    private Comment parentComment;
    private CircularImageView parentCommentAvatar;
    private ImageView parentCommentImageResponse;
    private TextView parentCommentTextResponse;
    private TextView parentCommentTimeStamp;
    private TextView parentCommentUserName;
    private String partialText;
    private String photoUri = null;
    private int requestCode = 0;
    private ImageView responseImageView;
    private EditText responseTextView;
    private boolean successfulPost;
    private Bitmap thumbnail;
    private String uploadImagePath = null;

    private void bindAvatar(String string2) {
        if (!(TextUtils.isEmpty((CharSequence)string2) || string2.equals("null") || string2.contains("static/images/public/defaults/user_large.jpg"))) {
            Glide.with(this.parentCommentAvatar.getContext()).load(string2).into(this.parentCommentAvatar);
            return;
        }
        this.parentCommentAvatar.setBackgroundResource(2130837722);
    }

    private void bindImageResponse(String string2) {
        string2 = NetworkService.getEnvironment().BASE_STATIC_URL + string2;
        if (!string2.equals("") && !string2.equals("null")) {
            LogUtil.d(TAG, "Fetching user avatar from URL: " + string2);
            Glide.with(this.parentCommentImageResponse.getContext()).load(string2).into(this.parentCommentImageResponse);
        }
    }

    private void bindTextResponse(String string2) {
        if (string2 != null) {
            this.parentCommentTextResponse.setText((CharSequence)string2);
        }
    }

    private void bindTimeStamp(String string2) {
        if (string2 != null) {
            this.parentCommentTimeStamp.setText((CharSequence)string2);
        }
    }

    private void bindUserNameView(String string2) {
        this.parentCommentUserName.setText((CharSequence)string2);
    }

    private void clearImage() {
        this.fullImagePath = null;
        this.uploadImagePath = null;
        this.photoUri = null;
        this.thumbnail.recycle();
        this.thumbnail = null;
        this.responseImageView.setImageBitmap(null);
        this.responseImageView.setVisibility(8);
    }

    private CommentListCache getCommentsCache() {
        return CommentListMapCache.getInstance();
    }

    private String getPath(Uri object) {
        Object var2_2 = null;
        Cursor cursor = this.getContentResolver().query((Uri)object, null, null, null, null);
        if (cursor == null) {
            return object.getPath();
        }
        cursor.moveToFirst();
        int n2 = cursor.getColumnIndex("_data");
        object = var2_2;
        if (n2 > 0) {
            object = cursor.getString(n2);
        }
        cursor.close();
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void handleRequest(int n2) {
        if (n2 == 1 || n2 == 2) {
            switch (n2) {
                default: {
                    this.finish();
                    break;
                }
                case 1: {
                    if (this.photoUri == null) break;
                    try {
                        BuzzImageUtils.downsizeImageSaveToPathOut(this.photoUri, this.uploadImagePath);
                        this.thumbnail = BitmapFactory.decodeFile((String)this.uploadImagePath);
                        this.requestCode = n2;
                    }
                    catch (Exception var2_2) {
                        LogUtil.e(TAG, "Error with GALLERY_IMAGE_SELECT", var2_2);
                    }
                    break;
                }
                case 2: {
                    if (this.fullImagePath == null) break;
                    try {
                        BuzzImageUtils.downsizeImageSaveToPathOut(this.fullImagePath, this.uploadImagePath);
                        this.thumbnail = BitmapFactory.decodeFile((String)this.uploadImagePath);
                        this.requestCode = n2;
                        break;
                    }
                    catch (Exception var2_3) {
                        LogUtil.e(TAG, "Error with CAMERA_PIC_REQUEST", var2_3);
                    }
                }
            }
            this.imageSelected();
        }
    }

    private void imageSelected() {
        if (this.thumbnail != null) {
            this.hasImage = true;
            this.toggleImageButton();
            this.responseImageView.setVisibility(0);
            this.responseImageView.setImageBitmap(this.thumbnail);
            new Handler().postDelayed(new Runnable(){

                @Override
                public void run() {
                    ContributionSubmitActivity.this.responseTextView.dispatchTouchEvent(MotionEvent.obtain((long)SystemClock.uptimeMillis(), (long)SystemClock.uptimeMillis(), (int)0, (float)0.0f, (float)0.0f, (int)0));
                    ContributionSubmitActivity.this.responseTextView.dispatchTouchEvent(MotionEvent.obtain((long)SystemClock.uptimeMillis(), (long)SystemClock.uptimeMillis(), (int)1, (float)0.0f, (float)0.0f, (int)0));
                }
            }, 200);
        }
    }

    private void launchCamera() {
        if (ContextCompat.checkSelfPermission((Context)this, "android.permission.CAMERA") != 0 || ContextCompat.checkSelfPermission((Context)this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE"}, 101);
            return;
        }
        this.setImagePath();
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", (Parcelable)Uri.fromFile((File)new File(this.fullImagePath)));
        this.startActivityForResult(intent, 2);
    }

    private void launchGallery() {
        if (ContextCompat.checkSelfPermission((Context)this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 100);
            return;
        }
        this.setImagePath();
        this.startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI), 1);
    }

    private BuzzFeedComment makeCommentFromData(String object) {
        BuzzFeedComment buzzFeedComment = new BuzzFeedComment((Context)this);
        buzzFeedComment.setTimeAdded(String.valueOf(System.currentTimeMillis()));
        buzzFeedComment.setBlurb((String)object);
        buzzFeedComment.setForm("text");
        buzzFeedComment.setBuzzId(this.content.getId());
        buzzFeedComment.setParent(this.parentComment);
        object = new Comment.UserInfo();
        object.setDisplayName(this.buzzUser.getDisplayName());
        object.setUserId(this.buzzUser.getUserid());
        object.setUsername(this.buzzUser.getUsername());
        object.setUserImg(this.buzzUser.getImageUrl());
        buzzFeedComment.setUserInfo((Comment.UserInfo)object);
        return buzzFeedComment;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void postImage() throws Exception {
        Object object;
        this.mNewComment.setForm("image");
        String string2 = TAG + ".postData";
        Object object2 = new File(this.uploadImagePath);
        if (!object2.exists()) return;
        Object object3 = new JSONObject(((ResponseBody)this.mCommentServiceHelper.uploadImage((MultipartBody.Part)(object2 = MultipartRequestHelper.prepareFilePart("Filedata", (File)object2)), (HashMap<String, RequestBody>)(object = new CommentServiceHelper.ImageUploadParamBuilder().build())).execute().body()).string());
        if (!object3.optBoolean("uploaded", false)) {
            this.successfulPost = false;
            return;
        }
        object2 = object3.getString("image");
        object = object3.getString("height");
        object3 = object3.getString("width");
        this.mNewComment.setCommentImgUrl((String)object2);
        object2 = new CommentServiceHelper.ImageSaveParamBuilder().sessionKey(this.buzzUser.getSessionKey()).buzzId(this.content.getId()).form(this.mNewComment.getForm()).blurb(this.mNewComment.getBlurb()).url(this.mNewComment.getCommentImageUrl()).height((String)object).width((String)object3).build();
        object = null;
        try {
            object3 = ((ResponseBody)this.mCommentServiceHelper.saveImage((Map<String, String>)object2).execute().body()).string();
            object2 = new JSONObject((String)object3);
        }
        catch (Exception var1_3) {}
        try {
            LogUtil.d(string2, "Contribute response: " + (String)object3);
            boolean bl = object2.getInt("success") == 1;
            this.successfulPost = bl;
            if (this.successfulPost) {
                object = object2.getString("id");
                this.mNewComment.setCommentId((String)object);
            }
            this.errorMsg = object2.optString("error");
            return;
        }
        catch (Exception var3_6) {
            object = object2;
            object2 = var3_6;
        }
        {
            LogUtil.e(string2, this.getString(2131296376), object2);
            if (object != null) {
                this.errorMsg = object.optString("error");
            }
            this.successfulPost = false;
            return;
        }
    }

    private void setImagePath() {
        if (this.fullImagePath == null || this.uploadImagePath == null) {
            String string2 = String.valueOf(System.currentTimeMillis());
            this.fullImagePath = this.buzzFeedDir + "/contrib-" + string2 + ".jpg";
            this.uploadImagePath = this.buzzFeedDir + "/contrib-" + string2 + "-sm.jpg";
        }
    }

    private void setMenuItemOnOff(MenuItem menuItem, boolean bl) {
        if (menuItem != null) {
            menuItem.setVisible(bl);
            menuItem.setEnabled(bl);
        }
    }

    private void setupOverlay() {
        this.overlay = this.findViewById(2131820869);
        this.overlay.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.fadeInOverlay = AnimationUtils.loadAnimation((Context)this, (int)2130968595);
        this.fadeInOverlay.setAnimationListener((Animation.AnimationListener)new AnimationListener(){

            @Override
            public void onAnimationStart(Animation animation) {
                ContributionSubmitActivity.this.overlay.setVisibility(0);
            }
        });
        this.fadeOutOverlay = AnimationUtils.loadAnimation((Context)this, (int)2130968597);
        this.fadeOutOverlay.setAnimationListener((Animation.AnimationListener)new AnimationListener(){

            @Override
            public void onAnimationEnd(Animation animation) {
                ContributionSubmitActivity.this.overlay.setVisibility(8);
            }
        });
    }

    @TargetApi(value=21)
    private void setupShareElementTransition() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.parentCommentAvatar.setTransitionName(SharedElementTag.AVATAR);
            this.parentCommentUserName.setTransitionName(SharedElementTag.USER_NAME);
            this.parentCommentTextResponse.setTransitionName(SharedElementTag.COMMENT);
            this.parentCommentImageResponse.setTransitionName(SharedElementTag.COMMENT_IMAGE);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupView() {
        this.responseImageView = (ImageView)this.findViewById(2131820867);
        this.responseImageView.setVisibility(8);
        this.parentCommentAvatar = (CircularImageView)this.findViewById(2131820862);
        this.parentCommentImageResponse = (ImageView)this.findViewById(2131820865);
        this.parentCommentUserName = (TextView)this.findViewById(2131820863);
        this.parentCommentTimeStamp = (TextView)this.findViewById(2131820864);
        this.parentCommentTextResponse = (TextView)this.findViewById(2131820866);
        TextView textView = (TextView)this.findViewById(2131820861);
        if (this.parentComment != null) {
            this.bindAvatar(this.parentComment.getUserInfo().getLargeUserImg());
            this.bindUserNameView(this.parentComment.getUserInfo().getUsername());
            this.bindTimeStamp(this.parentComment.getFormattedTimestamp().toUpperCase());
            this.bindTextResponse(this.parentComment.getBlurb());
            this.bindImageResponse(this.parentComment.getCommentImageUrl());
        } else {
            this.findViewById(2131820847).setVisibility(8);
            textView.setVisibility(8);
            this.parentCommentTextResponse.setVisibility(8);
            this.parentCommentTimeStamp.setVisibility(8);
            this.parentCommentAvatar.setVisibility(8);
            this.parentCommentUserName.setVisibility(8);
        }
        this.responseTextView = (EditText)this.findViewById(2131820868);
        this.setupOverlay();
        this.setupShareElementTransition();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showResults() {
        if (this.successfulPost) {
            BuzzUtils.showToastNotification(this, this.getString(2131296380), 1);
            Intent intent = new Intent();
            intent.putExtra("contributeResult", true);
            this.setResult(-1, intent);
            if (this.successfulPost) {
                this.getCommentsCache().addComment(this.mNewComment, this.content.getId());
            }
            this.finish();
            return;
        }
        if (this.errorMsg != null && this.errorMsg.equals("duplicate name")) {
            BuzzUtils.showToastNotification(this, this.getString(2131296378), 1);
        } else {
            StringBuilder stringBuilder = new StringBuilder().append(this.getString(2131296379));
            String string2 = this.errorMsg != null ? ": " + this.errorMsg : ".";
            BuzzUtils.showToastNotification(this, stringBuilder.append(string2).toString(), 1);
        }
        new Handler().postDelayed(new Runnable(){

            @Override
            public void run() {
                ContributionSubmitActivity.this.responseTextView.dispatchTouchEvent(MotionEvent.obtain((long)SystemClock.uptimeMillis(), (long)SystemClock.uptimeMillis(), (int)0, (float)0.0f, (float)0.0f, (int)0));
                ContributionSubmitActivity.this.responseTextView.dispatchTouchEvent(MotionEvent.obtain((long)SystemClock.uptimeMillis(), (long)SystemClock.uptimeMillis(), (int)1, (float)0.0f, (float)0.0f, (int)0));
            }
        }, 200);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void toggleImageButton() {
        this.setMenuItemOnOff(this.menuImageDelete, this.hasImage);
        MenuItem menuItem = this.menuImage;
        boolean bl = !this.hasImage;
        this.setMenuItemOnOff(menuItem, bl);
    }

    private void toggleOverlay(boolean bl) {
        if (bl) {
            this.overlay.setVisibility(0);
            this.overlay.startAnimation(this.fadeInOverlay);
            return;
        }
        this.overlay.startAnimation(this.fadeOutOverlay);
    }

    public void buildImageDialog() {
        BuzzFeedAlertDialog.Builder builder = new BuzzFeedAlertDialog.Builder((Context)this);
        builder.setTitle(2131296377);
        String string2 = this.getString(2131296434);
        String string3 = this.getString(2131296493);
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
                switch (n2) {
                    case 0: {
                        ContributionSubmitActivity.this.launchGallery();
                    }
                    default: {
                        break;
                    }
                    case 1: {
                        ContributionSubmitActivity.this.launchCamera();
                    }
                }
                if (ContributionSubmitActivity.this.mCurrentAlertDialog != null) {
                    ContributionSubmitActivity.this.mCurrentAlertDialog.dismiss();
                }
            }
        };
        builder.setStackedListItems(new String[]{string2, string3}, onItemClickListener);
        this.mCurrentAlertDialog = builder.create();
        this.mCurrentAlertDialog.show();
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        this.getSupportActionBar().setTitle(this.getString(2131296381));
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.thumbnail = null;
        this.photoUri = null;
        this.requestCode = 0;
        if (n2 == 1 && intent != null) {
            this.photoUri = this.getPath(intent.getData());
        }
        this.handleRequest(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.d(TAG, "onCreate");
        this.setContentView(2130903124);
        if (this.getIntent().hasExtra("KEY_CONTENT")) {
            this.content = (PostContent)this.getIntent().getSerializableExtra("KEY_CONTENT");
        }
        this.buzzUser = BuzzUser.getInstance(this.getApplicationContext());
        Object object = this.getIntent();
        if (object != null && object.hasExtra("comment_id")) {
            object = object.getStringExtra("comment_id");
            this.parentComment = CommentListMapCache.getInstance().getComment(null, (String)object);
        }
        if (this.buzzUser != null && this.buzzUser.isLogin() && this.content != null) {
            this.setupView();
        } else {
            BuzzUtils.showToastNotification(this, this.getString(2131296379), 0);
            this.finish();
        }
        if (bundle != null) {
            this.photoUri = bundle.getString("photoUri");
            this.requestCode = bundle.getInt("requestCode");
            this.uploadImagePath = bundle.getString("uploadPath");
            this.fullImagePath = bundle.getString("fullPath");
            this.partialText = bundle.getString("partialText");
            if (this.partialText != null) {
                this.responseTextView.setText((CharSequence)this.partialText, TextView.BufferType.SPANNABLE);
                this.responseTextView.setSelection(this.partialText.length());
            }
            this.handleRequest(this.requestCode);
        }
        this.mCommentServiceHelper = NetworkService.getCommentService();
    }

    public boolean onCreateOptionsMenu(Menu menu2) {
        super.onCreateOptionsMenu(menu2);
        this.getMenuInflater().inflate(2131886082, menu2);
        this.menuImage = menu2.findItem(2131821104);
        this.menuImageDelete = menu2.findItem(2131821105);
        this.menuSend = menu2.findItem(2131821106);
        this.toggleImageButton();
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem object) {
        switch (object.getItemId()) {
            default: {
                return false;
            }
            case 16908332: {
                this.finish();
                return true;
            }
            case 2131821104: {
                this.buildImageDialog();
                return true;
            }
            case 2131821105: {
                this.hasImage = false;
                this.toggleImageButton();
                this.clearImage();
                return true;
            }
            case 2131821106: 
        }
        object = this.responseTextView.getText().toString();
        if (object.length() > 0) {
            new ContributeTask((String)object).execute((Object[])new Void[]{null, null, null});
            return true;
        }
        BuzzUtils.showToastNotification(this, this.getString(2131296382), 1);
        return true;
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        if (Build.VERSION.SDK_INT < 21 && this.responseTextView != null && this.responseTextView.hasFocus()) {
            this.responseTextView.postDelayed(new Runnable(){

                @Override
                public void run() {
                    ((InputMethodManager)ContributionSubmitActivity.this.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            }, 1000);
        }
    }

    @Override
    public void onRequestPermissionsResult(int n2, @NonNull String[] arrstring, @NonNull int[] arrn) {
        switch (n2) {
            default: {
                super.onRequestPermissionsResult(n2, arrstring, arrn);
                return;
            }
            case 100: {
                if (arrn.length > 0 && arrn[0] == 0) {
                    this.launchGallery();
                    return;
                }
                new BuzzFeedAlertDialog.Builder((Context)this).setTitle(2131296898).setMessage(2131296815).setPositiveButton(2131296461, null).create().show();
                return;
            }
            case 101: 
        }
        if (arrn.length > 0 && arrn[0] == 0) {
            this.launchCamera();
            return;
        }
        new BuzzFeedAlertDialog.Builder((Context)this).setTitle(2131296898).setMessage(2131296664).setPositiveButton(2131296461, null).create().show();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        if (this.requestCode != 0) {
            bundle.putInt("requestCode", this.requestCode);
        }
        if (this.photoUri != null) {
            bundle.putString("photoUri", this.photoUri);
        }
        if (this.uploadImagePath != null) {
            bundle.putString("uploadPath", this.uploadImagePath);
        }
        if (this.fullImagePath != null) {
            bundle.putString("fullPath", this.fullImagePath);
        }
        if (this.responseTextView != null && !this.responseTextView.getText().toString().isEmpty()) {
            bundle.putString("partialText", this.responseTextView.getText().toString());
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void postText() {
        String string2;
        String string3 = TAG + ".postText";
        Object object = new CommentServiceHelper.PostTextParamBuilder().sessionKey(this.buzzUser.getSessionKey()).buzzId(this.mNewComment.getBuzzId()).form(this.mNewComment.getForm()).blurb(this.mNewComment.getBlurb());
        if (this.mNewComment.getParentCommentId() != null) {
            object.parentId(this.mNewComment.getParentCommentId());
        }
        object = object.build();
        Object object2 = null;
        try {
            string2 = ((ResponseBody)this.mCommentServiceHelper.postText((Map<String, String>)object).execute().body()).string();
            object = new JSONObject(string2);
        }
        catch (Exception var1_3) {}
        try {
            boolean bl = object.getInt("success") == 1;
            this.successfulPost = bl;
            if (this.successfulPost) {
                object2 = object.getString("id");
                this.mNewComment.setCommentId((String)object2);
            }
            this.errorMsg = object.optString("error");
            LogUtil.d(string3, "Contribute response: " + string2 + " ; successfulPost=" + this.successfulPost + " ;errorMsg=" + this.errorMsg);
            return;
        }
        catch (Exception var3_6) {
            object2 = object;
            object = var3_6;
        }
        {
            if (object2 != null) {
                this.errorMsg = object2.optString("error");
            }
            LogUtil.e(string3, "error posting text, error message =  " + this.errorMsg, (Throwable)object);
            this.successfulPost = false;
            return;
        }
    }

    private class ContributeTask
    extends AsyncTask<Void, Void, Void> {
        private boolean invalidSession;
        private final String text;

        public ContributeTask(String string2) {
            this.invalidSession = false;
            this.text = string2;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        protected /* varargs */ Void doInBackground(Void ... object) {
            object = TAG + ".ContributeTextTask.doInBackground";
            try {
                ContributionSubmitActivity.this.mNewComment = ContributionSubmitActivity.this.makeCommentFromData(this.text);
                if (ContributionSubmitActivity.this.hasImage) {
                    ContributionSubmitActivity.this.postImage();
                } else {
                    ContributionSubmitActivity.this.postText();
                }
                BuzzFeedTracker.getInstance().trackEvent(ContributionSubmitActivity.this.getString(2131296765), ContributionSubmitActivity.this.getString(2131296726), BuzzUtils.removeCacheBuster(ContributionSubmitActivity.this.content.getUri()), 0);
                DustbusterClient.getInstance().trackBuzzFeedComment(ContributionSubmitActivity.this.content);
                return null;
            }
            catch (Exception var2_2) {
                LogUtil.e((String)object, "Error posting data", var2_2);
            }
            return null;
        }

        protected void onPostExecute(Void void_) {
            if (Build.VERSION.SDK_INT >= 9) {
                ContributionSubmitActivity.this.menuSend.setActionView(null);
            }
            ContributionSubmitActivity.this.toggleOverlay(false);
            if (!this.invalidSession) {
                ContributionSubmitActivity.this.showResults();
                return;
            }
            BuzzUtils.showToastNotification(ContributionSubmitActivity.this, ContributionSubmitActivity.this.getString(2131296390), 0);
            ContributionSubmitActivity.this.buzzUser.logout(ContributionSubmitActivity.this);
            void_ = new Intent((Context)ContributionSubmitActivity.this, (Class)BuzzLoginActivity.class);
            ContributionSubmitActivity.this.startActivity((Intent)void_);
        }

        protected void onPreExecute() {
            if (Build.VERSION.SDK_INT >= 9) {
                ContributionSubmitActivity.this.menuSend.setActionView(2130903067);
            }
            ContributionSubmitActivity.this.toggleOverlay(true);
            ((InputMethodManager)ContributionSubmitActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(ContributionSubmitActivity.this.responseTextView.getWindowToken(), 0);
        }
    }

    public static final class SharedElementTag {
        public static final String AVATAR = SharedElementTag.class.getSimpleName() + ".avatar";
        public static final String COMMENT;
        public static final String COMMENT_IMAGE;
        public static final String USER_NAME;

        static {
            USER_NAME = SharedElementTag.class.getSimpleName() + ".userName";
            COMMENT = SharedElementTag.class.getSimpleName() + ".comment";
            COMMENT_IMAGE = SharedElementTag.class.getSimpleName() + ".commentImage";
        }
    }

}

