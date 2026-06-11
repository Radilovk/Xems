package com.isaigu.gymapp;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.isaigu.gymapp.message.DataBundle;
import com.isaigu.gymapp.message.EventListener;
import com.isaigu.gymapp.message.MessageDispatcher;
import com.isaigu.gymapp.utils.AndroidUtils;

public abstract class BaseDialogFragment extends DialogFragment implements EventListener {
    private BaseActivity parentActivity;

    public abstract int getViewIid();

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
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(getViewIid(), container, false);
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideSoftInput(v.getWindowToken());
            }
        });
        return view;
    }

    protected void hideSoftInput(IBinder token) {
        if (token == null) {
            return;
        }
        BaseActivity activity = getParentActivity();
        if (activity == null) {
            return;
        }
        InputMethodManager manager = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
        if (manager != null) {
            manager.hideSoftInputFromWindow(token, 2);
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = super.onCreateDialog(savedInstanceState);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.BottomDialog_Animation);
        }
        return dialog;
    }

    @Override
    public void handleEvent(DataBundle bundle) {
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
        Dialog dialog = getDialog();
        if (activity != null && dialog != null && dialog.getWindow() != null && dialog.getWindow().getDecorView() != null) {
            AndroidUtils.setKeyBoardVisible(activity, dialog.getWindow().getDecorView(), false);
        }
    }
}
