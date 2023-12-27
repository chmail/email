.class public Ldroidninja/filepicker/FilePickerActivity;
.super Ldroidninja/filepicker/BaseFilePickerActivity;
.source "FilePickerActivity.java"

# interfaces
.implements Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;
.implements Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;
.implements Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;
.implements Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Ldroidninja/filepicker/FilePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/FilePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ldroidninja/filepicker/BaseFilePickerActivity;-><init>()V

    return-void
.end method

.method private openSpecificFragment(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "type"    # I
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 83
    invoke-static {}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->newInstance()Ldroidninja/filepicker/fragments/MediaPickerFragment;

    move-result-object v0

    .line 84
    .local v0, "photoFragment":Ldroidninja/filepicker/fragments/MediaPickerFragment;
    sget v1, Ldroidninja/filepicker/R$id;->container:I

    invoke-static {p0, v1, v0}, Ldroidninja/filepicker/utils/FragmentUtil;->addFragment(Landroid/support/v7/app/AppCompatActivity;ILdroidninja/filepicker/fragments/BaseFragment;)V

    .line 92
    .end local v0    # "photoFragment":Ldroidninja/filepicker/fragments/MediaPickerFragment;
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->isDocSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->addDocTypes()V

    .line 89
    :cond_1
    invoke-static {}, Ldroidninja/filepicker/fragments/DocPickerFragment;->newInstance()Ldroidninja/filepicker/fragments/DocPickerFragment;

    move-result-object v0

    .line 90
    .local v0, "photoFragment":Ldroidninja/filepicker/fragments/DocPickerFragment;
    sget v1, Ldroidninja/filepicker/R$id;->container:I

    invoke-static {p0, v1, v0}, Ldroidninja/filepicker/utils/FragmentUtil;->addFragment(Landroid/support/v7/app/AppCompatActivity;ILdroidninja/filepicker/fragments/BaseFragment;)V

    goto :goto_0
.end method

.method private returnData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 150
    const-string v1, "SELECTED_PHOTOS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 154
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Ldroidninja/filepicker/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->finish()V

    .line 156
    return-void

    .line 152
    :cond_0
    const-string v1, "SELECTED_DOCS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setToolbarTitle(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v1

    .line 67
    .local v1, "maxCount":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-lez p1, :cond_1

    .line 68
    sget v2, Ldroidninja/filepicker/R$string;->attachments_num:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    .end local v1    # "maxCount":I
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v1    # "maxCount":I
    :cond_1
    if-lez v1, :cond_2

    if-lez p1, :cond_2

    .line 70
    sget v2, Ldroidninja/filepicker/R$string;->attachments_title_text:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_2
    iget v2, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    .line 73
    sget v2, Ldroidninja/filepicker/R$string;->select_photo_text:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 75
    :cond_3
    sget v2, Ldroidninja/filepicker/R$string;->select_doc_text:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initView()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_0
    const-string v2, "SELECTED_PHOTOS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 40
    .local v1, "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "EXTRA_PICKER_TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    .line 42
    if-eqz v1, :cond_4

    .line 44
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    :cond_1
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->clearSelections()V

    .line 49
    iget v2, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    if-ne v2, v4, :cond_3

    .line 50
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ldroidninja/filepicker/PickerManager;->add(Ljava/util/ArrayList;I)V

    .line 58
    :goto_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v2

    invoke-direct {p0, v2}, Ldroidninja/filepicker/FilePickerActivity;->setToolbarTitle(I)V

    .line 59
    iget v2, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    invoke-direct {p0, v2, v1}, Ldroidninja/filepicker/FilePickerActivity;->openSpecificFragment(ILjava/util/ArrayList;)V

    .line 61
    .end local v1    # "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 52
    .restart local v1    # "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ldroidninja/filepicker/PickerManager;->add(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 56
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 128
    invoke-super {p0, p1, p2, p3}, Ldroidninja/filepicker/BaseFilePickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 134
    iget v0, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 135
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getSelectedPhotos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Ldroidninja/filepicker/FilePickerActivity;->returnData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getSelectedFiles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Ldroidninja/filepicker/FilePickerActivity;->returnData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v0

    invoke-direct {p0, v0}, Ldroidninja/filepicker/FilePickerActivity;->setToolbarTitle(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0xeb
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Ldroidninja/filepicker/BaseFilePickerActivity;->onBackPressed()V

    .line 121
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->reset()V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/FilePickerActivity;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->finish()V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    sget v0, Ldroidninja/filepicker/R$layout;->activity_file_picker:I

    invoke-super {p0, p1, v0}, Ldroidninja/filepicker/BaseFilePickerActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 30
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 96
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ldroidninja/filepicker/R$menu;->picker_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    invoke-super {p0, p1}, Ldroidninja/filepicker/BaseFilePickerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v0

    .line 161
    .local v0, "currentCount":I
    invoke-direct {p0, v0}, Ldroidninja/filepicker/FilePickerActivity;->setToolbarTitle(I)V

    .line 163
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-ne v0, v2, :cond_0

    .line 164
    iget v1, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getSelectedPhotos()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Ldroidninja/filepicker/FilePickerActivity;->returnData(Ljava/util/ArrayList;)V

    .line 165
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getSelectedFiles()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 104
    .local v0, "i":I
    sget v2, Ldroidninja/filepicker/R$id;->action_done:I

    if-ne v0, v2, :cond_1

    .line 105
    iget v2, p0, Ldroidninja/filepicker/FilePickerActivity;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 106
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getSelectedPhotos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Ldroidninja/filepicker/FilePickerActivity;->returnData(Ljava/util/ArrayList;)V

    .line 115
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getSelectedFiles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Ldroidninja/filepicker/FilePickerActivity;->returnData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 111
    :cond_1
    const v2, 0x102002c

    if-ne v0, v2, :cond_2

    .line 112
    invoke-virtual {p0}, Ldroidninja/filepicker/FilePickerActivity;->onBackPressed()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-super {p0, p1}, Ldroidninja/filepicker/BaseFilePickerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
