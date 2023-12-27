.class public Ldroidninja/filepicker/utils/AndroidLifecycleUtils;
.super Ljava/lang/Object;
.source "AndroidLifecycleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLoadImage(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 41
    .local v0, "destroyed":Z
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 42
    goto :goto_0

    .end local v0    # "destroyed":Z
    :cond_3
    move v0, v2

    .line 39
    goto :goto_1
.end method

.method public static canLoadImage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 21
    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 29
    check-cast v0, Landroid/app/Activity;

    .line 30
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/app/Activity;)Z

    move-result v1

    goto :goto_0
.end method

.method public static canLoadImage(Landroid/support/v4/app/Fragment;)Z
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 17
    :goto_0
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 17
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-static {v0}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/app/Activity;)Z

    move-result v1

    goto :goto_0
.end method
