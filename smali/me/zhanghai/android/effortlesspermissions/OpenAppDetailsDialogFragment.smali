.class public Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "OpenAppDetailsDialogFragment.java"


# static fields
.field private static final EXTRA_CANCELABLE:Ljava/lang/String;

.field private static final EXTRA_MESSAGE:Ljava/lang/String;

.field private static final EXTRA_NEGATIVE_BUTTON_TEXT:Ljava/lang/String;

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String;

.field private static final EXTRA_POSITIVE_BUTTON_TEXT:Ljava/lang/String;

.field private static final EXTRA_REQUEST_CODE:Ljava/lang/String;

.field private static final EXTRA_TITLE:Ljava/lang/String;

.field private static final KEY_PREFIX:Ljava/lang/String;

.field private static final REQUEST_CODE_INVALID:I = -0x1


# instance fields
.field private mCancelable:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mRequestCode:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "REQUEST_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PACKAGE_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_TITLE:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_MESSAGE:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "POSITIVE_BUTTON_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_POSITIVE_BUTTON_TEXT:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NEGATIVE_BUTTON_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_NEGATIVE_BUTTON_TEXT:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CANCELABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_CANCELABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->openAppDetails()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "positiveButtonText"    # Ljava/lang/CharSequence;
    .param p5, "negativeButtonText"    # Ljava/lang/CharSequence;
    .param p6, "cancelable"    # Z

    .prologue
    .line 52
    new-instance v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    invoke-direct {v1}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "arguments":Landroid/os/Bundle;
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 57
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 58
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_POSITIVE_BUTTON_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 59
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_NEGATIVE_BUTTON_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 60
    sget-object v2, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_CANCELABLE:Ljava/lang/String;

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v1, v0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method

.method private openAppDetails()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 123
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 124
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v2, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mPackageName:Ljava/lang/String;

    .line 125
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "package"

    const/4 v7, 0x0

    .line 126
    invoke-static {v6, v2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 128
    .local v4, "targetFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_2

    .line 129
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    if-eq v5, v8, :cond_1

    .line 130
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    :goto_1
    return-void

    .line 124
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "targetFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 132
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "targetFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {v4, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 137
    .local v3, "parentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_4

    .line 138
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    if-eq v5, v8, :cond_3

    .line 139
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    invoke-virtual {v3, v1, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 145
    :cond_4
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    if-eq v5, v8, :cond_5

    .line 146
    iget v5, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static show(IIIILandroid/support/v4/app/Fragment;)V
    .locals 4
    .param p0, "titleRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "messageRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "positiveButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "negativeButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 163
    invoke-virtual {p4, p0}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 164
    invoke-virtual {p4, p2}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, p3}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 163
    invoke-static {v0, v1, v2, v3, p4}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v4/app/Fragment;)V

    .line 166
    return-void
.end method

.method public static show(IIIILandroid/support/v7/app/AppCompatActivity;)V
    .locals 4
    .param p0, "titleRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "messageRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "positiveButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "negativeButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 185
    invoke-virtual {p4, p0}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, p1}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 186
    invoke-virtual {p4, p2}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, p3}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 185
    invoke-static {v0, v1, v2, v3, p4}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v7/app/AppCompatActivity;)V

    .line 188
    return-void
.end method

.method public static show(IILandroid/support/v4/app/Fragment;)V
    .locals 4
    .param p0, "messageRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "positiveButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p2, p0}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 171
    invoke-virtual {p2, v3}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    invoke-static {v0, v1, v2, v3, p2}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v4/app/Fragment;)V

    .line 172
    return-void
.end method

.method public static show(IILandroid/support/v7/app/AppCompatActivity;)V
    .locals 4
    .param p0, "messageRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "positiveButtonTextRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p2, p0}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 193
    invoke-virtual {p2, v3}, Landroid/support/v7/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    invoke-static {v0, v1, v2, v3, p2}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v7/app/AppCompatActivity;)V

    .line 194
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "positiveButtonText"    # Ljava/lang/CharSequence;
    .param p3, "negativeButtonText"    # Ljava/lang/CharSequence;
    .param p4, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 155
    const/4 v0, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    move-result-object v0

    .line 157
    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "positiveButtonText"    # Ljava/lang/CharSequence;
    .param p3, "negativeButtonText"    # Ljava/lang/CharSequence;
    .param p4, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    const/4 v1, 0x0

    .line 177
    const/4 v0, -0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;

    move-result-object v0

    .line 179
    invoke-virtual {p4}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "arguments":Landroid/os/Bundle;
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    .line 78
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mPackageName:Ljava/lang/String;

    .line 79
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 80
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mMessage:Ljava/lang/CharSequence;

    .line 81
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_POSITIVE_BUTTON_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 82
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_NEGATIVE_BUTTON_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_CANCELABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mCancelable:Z

    .line 84
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getTheme()I

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 94
    :cond_0
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 97
    :cond_1
    iget-object v2, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 98
    .local v2, "positiveButtonText":Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    .line 99
    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 101
    :cond_2
    new-instance v3, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment$1;

    invoke-direct {v3, p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment$1;-><init>(Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 107
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 108
    iget-object v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    :cond_3
    iget-boolean v3, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mCancelable:Z

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 118
    iput p2, p0, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->mRequestCode:I

    .line 119
    invoke-virtual {p0}, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lme/zhanghai/android/effortlesspermissions/OpenAppDetailsDialogFragment;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-void
.end method
