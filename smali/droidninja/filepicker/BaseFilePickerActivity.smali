.class public abstract Ldroidninja/filepicker/BaseFilePickerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseFilePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract initView()V
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getTheme()I

    move-result v1

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/BaseFilePickerActivity;->setTheme(I)V

    .line 22
    invoke-virtual {p0, p2}, Ldroidninja/filepicker/BaseFilePickerActivity;->setContentView(I)V

    .line 25
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getOrientation()Ldroidninja/filepicker/utils/Orientation;

    move-result-object v0

    .line 26
    .local v0, "orientation":Ldroidninja/filepicker/utils/Orientation;
    sget-object v1, Ldroidninja/filepicker/utils/Orientation;->PORTRAIT_ONLY:Ldroidninja/filepicker/utils/Orientation;

    if-ne v0, v1, :cond_1

    .line 27
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/BaseFilePickerActivity;->setRequestedOrientation(I)V

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ldroidninja/filepicker/BaseFilePickerActivity;->initView()V

    .line 32
    return-void

    .line 28
    :cond_1
    sget-object v1, Ldroidninja/filepicker/utils/Orientation;->LANDSCAPE_ONLY:Ldroidninja/filepicker/utils/Orientation;

    if-ne v0, v1, :cond_0

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/BaseFilePickerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
