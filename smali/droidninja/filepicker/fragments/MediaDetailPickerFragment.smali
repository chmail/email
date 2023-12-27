.class public Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;
.super Ldroidninja/filepicker/fragments/BaseFragment;
.source "MediaDetailPickerFragment.java"

# interfaces
.implements Ldroidninja/filepicker/adapters/FileAdapterListener;


# static fields
.field private static final SCROLL_THRESHOLD:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field emptyView:Landroid/widget/TextView;

.field private fileType:I

.field private imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

.field private mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

.field private mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

.field private photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private selectAllItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/BaseFragment;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method static synthetic access$100(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->resumeRequestsIfNotDestroyed()V

    return-void
.end method

.method static synthetic access$200(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)Ldroidninja/filepicker/utils/ImageCaptureManager;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 44
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    return-object v0
.end method

.method static synthetic access$400(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getDataFromMedia()V

    return-void
.end method

.method private getDataFromMedia()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "mediaStoreArgs":Landroid/os/Bundle;
    const-string v1, "EXTRA_FILE_TYPE"

    iget v2, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    iget v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->fileType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$2;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$2;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    invoke-static {v1, v0, v2}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getPhotoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->fileType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 171
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$3;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$3;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    invoke-static {v1, v0, v2}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getVideoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    sget v1, Ldroidninja/filepicker/R$id;->recyclerview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 127
    sget v1, Ldroidninja/filepicker/R$id;->empty_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->emptyView:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "FILE_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->fileType:I

    .line 129
    new-instance v1, Ldroidninja/filepicker/utils/ImageCaptureManager;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ldroidninja/filepicker/utils/ImageCaptureManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    .line 130
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 131
    .local v0, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 132
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 133
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 135
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$1;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$1;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 152
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getDataFromMedia()V

    .line 153
    return-void
.end method

.method public static newInstance(I)Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    .line 89
    new-instance v1, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-direct {v1}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;-><init>()V

    .line 90
    .local v1, "mediaDetailPickerFragment":Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "FILE_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v1, v0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v1
.end method

.method private resumeRequestsIfNotDestroyed()V
    .locals 1

    .prologue
    .line 257
    invoke-static {p0}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_0
.end method

.method private updateList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v3, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/Media;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 184
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$4;

    invoke-direct {v0, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$4;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 195
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :goto_1
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0, v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->setData(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->notifyDataSetChanged()V

    .line 226
    :goto_2
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 208
    :cond_2
    new-instance v0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v4

    invoke-virtual {v4}, Ldroidninja/filepicker/PickerManager;->getSelectedPhotos()Ljava/util/ArrayList;

    move-result-object v4

    iget v8, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->fileType:I

    if-ne v8, v5, :cond_3

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v8

    invoke-virtual {v8}, Ldroidninja/filepicker/PickerManager;->isEnableCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_3
    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;-><init>(Landroid/content/Context;Lcom/bumptech/glide/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLdroidninja/filepicker/adapters/FileAdapterListener;)V

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    .line 209
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 210
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    new-instance v1, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$5;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->setCameraListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    move v5, v6

    .line 208
    goto :goto_3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 230
    invoke-super {p0, p1, p2, p3}, Ldroidninja/filepicker/fragments/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 236
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    invoke-virtual {v1}, Ldroidninja/filepicker/utils/ImageCaptureManager;->galleryAddPic()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "imagePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 239
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 240
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    invoke-interface {v1}, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;->onItemSelected()V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$6;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$6;-><init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 74
    instance-of v0, p1, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .line 80
    return-void

    .line 77
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement PhotoPickerFragmentListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->hasSelectAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->setHasOptionsMenu(Z)V

    .line 111
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 265
    sget v0, Ldroidninja/filepicker/R$menu;->select_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 266
    sget v0, Ldroidninja/filepicker/R$id;->action_select:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    .line 267
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->onItemSelected()V

    .line 268
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 269
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    sget v0, Ldroidninja/filepicker/R$layout;->fragment_photo_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Ldroidninja/filepicker/fragments/BaseFragment;->onDetach()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .line 86
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    invoke-interface {v0}, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;->onItemSelected()V

    .line 99
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getSelectedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v1, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 105
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 273
    .local v0, "itemId":I
    sget v1, Ldroidninja/filepicker/R$id;->action_select:I

    if-ne v0, v1, :cond_4

    .line 274
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->selectAll()V

    .line 276
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->clearSelections()V

    .line 279
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->clearSelection()V

    .line 281
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_deselect_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    :cond_0
    :goto_0
    iget-object v3, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 289
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    invoke-interface {v1}, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;->onItemSelected()V

    .line 293
    :cond_1
    :goto_2
    return v2

    .line 284
    :cond_2
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->selectAll()V

    .line 285
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    iget-object v3, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ldroidninja/filepicker/PickerManager;->add(Ljava/util/ArrayList;I)V

    .line 286
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 288
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 293
    :cond_4
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->initView(Landroid/view/View;)V

    .line 123
    return-void
.end method
