package com.isaigu.gymapp;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.isaigu.gymapp.message.DataBundle;
import com.isaigu.gymapp.message.EventListener;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.utils.AndroidUtils;

public abstract class BaseFragment extends Fragment implements EventListener {
    private BaseActivity parentActivity;

    protected abstract int viewId();

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BaseActivity) {
            parentActivity = (BaseActivity) context;
        }
    }

    @Override
    @Deprecated
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof BaseActivity) {
            parentActivity = (BaseActivity) activity;
        }
    }

    public BaseActivity getParentActivity() {
        if (parentActivity == null) {
            FragmentActivity activity = getActivity();
            if (activity instanceof BaseActivity) {
                parentActivity = (BaseActivity) activity;
            }
        }
        return parentActivity;
    }

    @Override
    public void handleEvent(DataBundle bundle) {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(viewId(), container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        MessageDispatcher.detachEventListener(this);
        BaseActivity activity = getParentActivity();
        if (activity != null) {
            Window window = activity.getWindow();
            if (window != null && window.getDecorView() != null) {
                AndroidUtils.setKeyBoardVisible(activity, window.getDecorView(), false);
            }
        }
    }

    public void runOnUiThread(Runnable runnable) {
        BaseActivity activity = getParentActivity();
        if (activity != null && runnable != null) {
            activity.runOnUiThread(runnable);
        }
    }

    public int getColor(int resId) {
        BaseActivity activity = getParentActivity();
        if (activity == null) {
            return 0;
        }
        return activity.getResources().getColor(resId);
    }

    public float getDimension(int resId) {
        BaseActivity activity = getParentActivity();
        if (activity == null) {
            return 0f;
        }
        return activity.getResources().getDimension(resId);
    }

    public void showDialogFragment(BaseDialogFragment baseDialogFragment) {
        BaseActivity activity = getParentActivity();
        if (activity != null && baseDialogFragment != null) {
            activity.showDialogFragment(baseDialogFragment);
        }
    }

    public void closeDialogFragment(BaseDialogFragment baseDialogFragment) {
        BaseActivity activity = getParentActivity();
        if (activity != null && baseDialogFragment != null) {
            activity.closeDialogFragment(baseDialogFragment);
        }
    }
}
