/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.ActivityFragmentLifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@TargetApi(value=11)
public class RequestManagerFragment
extends Fragment {
    private final HashSet<RequestManagerFragment> childRequestManagerFragments;
    private final ActivityFragmentLifecycle lifecycle;
    private RequestManager requestManager;
    private final RequestManagerTreeNode requestManagerTreeNode;
    private RequestManagerFragment rootRequestManagerFragment;

    public RequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    @SuppressLint(value={"ValidFragment"})
    RequestManagerFragment(ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.requestManagerTreeNode = new FragmentRequestManagerTreeNode();
        this.childRequestManagerFragments = new HashSet();
        this.lifecycle = activityFragmentLifecycle;
    }

    private void addChildRequestManagerFragment(RequestManagerFragment requestManagerFragment) {
        this.childRequestManagerFragments.add(requestManagerFragment);
    }

    @TargetApi(value=17)
    private boolean isDescendant(Fragment fragment) {
        Fragment fragment2 = this.getParentFragment();
        while (fragment.getParentFragment() != null) {
            if (fragment.getParentFragment() == fragment2) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
        return false;
    }

    private void removeChildRequestManagerFragment(RequestManagerFragment requestManagerFragment) {
        this.childRequestManagerFragments.remove((Object)requestManagerFragment);
    }

    @TargetApi(value=17)
    public Set<RequestManagerFragment> getDescendantRequestManagerFragments() {
        if (this.rootRequestManagerFragment == this) {
            return Collections.unmodifiableSet(this.childRequestManagerFragments);
        }
        if (this.rootRequestManagerFragment == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet<RequestManagerFragment> hashSet = new HashSet<RequestManagerFragment>();
        for (RequestManagerFragment requestManagerFragment : this.rootRequestManagerFragment.getDescendantRequestManagerFragments()) {
            if (!this.isDescendant(requestManagerFragment.getParentFragment())) continue;
            hashSet.add(requestManagerFragment);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    ActivityFragmentLifecycle getLifecycle() {
        return this.lifecycle;
    }

    public RequestManager getRequestManager() {
        return this.requestManager;
    }

    public RequestManagerTreeNode getRequestManagerTreeNode() {
        return this.requestManagerTreeNode;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.rootRequestManagerFragment = RequestManagerRetriever.get().getRequestManagerFragment(this.getActivity().getFragmentManager());
        if (this.rootRequestManagerFragment != this) {
            this.rootRequestManagerFragment.addChildRequestManagerFragment(this);
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.lifecycle.onDestroy();
    }

    public void onDetach() {
        super.onDetach();
        if (this.rootRequestManagerFragment != null) {
            this.rootRequestManagerFragment.removeChildRequestManagerFragment(this);
            this.rootRequestManagerFragment = null;
        }
    }

    public void onLowMemory() {
        if (this.requestManager != null) {
            this.requestManager.onLowMemory();
        }
    }

    public void onStart() {
        super.onStart();
        this.lifecycle.onStart();
    }

    public void onStop() {
        super.onStop();
        this.lifecycle.onStop();
    }

    public void onTrimMemory(int n2) {
        if (this.requestManager != null) {
            this.requestManager.onTrimMemory(n2);
        }
    }

    public void setRequestManager(RequestManager requestManager) {
        this.requestManager = requestManager;
    }

    private class FragmentRequestManagerTreeNode
    implements RequestManagerTreeNode {
        private FragmentRequestManagerTreeNode() {
        }

        @Override
        public Set<RequestManager> getDescendants() {
            Object object = RequestManagerFragment.this.getDescendantRequestManagerFragments();
            HashSet<RequestManager> hashSet = new HashSet<RequestManager>(object.size());
            object = object.iterator();
            while (object.hasNext()) {
                RequestManagerFragment requestManagerFragment = (RequestManagerFragment)((Object)object.next());
                if (requestManagerFragment.getRequestManager() == null) continue;
                hashSet.add(requestManagerFragment.getRequestManager());
            }
            return hashSet;
        }
    }

}

