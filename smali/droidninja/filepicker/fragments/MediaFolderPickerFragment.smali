.class public Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;
.super Ldroidninja/filepicker/fragments/BaseFragment;
.source "MediaFolderPickerFragment.java"

# interfaces
.implements Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;


# static fields
.field private static final SCROLL_THRESHOLD:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field emptyView:Landroid/widget/TextView;

.field private fileType:I

.field private imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

.field private mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

.field private mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

.field private photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/BaseFragment;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 40
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method static synthetic access$100(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->resumeRequestsIfNotDestroyed()V

    return-void
.end method

.method static synthetic access$200(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getDataFromMedia()V

    return-void
.end method

.method private getDataFromMedia()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "mediaStoreArgs":Landroid/os/Bundle;
    const-string v1, "SHOW_GIF"

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->isShowGif()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v1, "EXTRA_FILE_TYPE"

    iget v2, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    iget v1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 144
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$2;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$2;-><init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    invoke-static {v1, v0, v2}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getPhotoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$3;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$3;-><init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    invoke-static {v1, v0, v2}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getVideoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    sget v4, Ldroidninja/filepicker/R$id;->recyclerview:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 105
    sget v4, Ldroidninja/filepicker/R$id;->empty_view:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->emptyView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "FILE_TYPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    .line 108
    new-instance v4, Ldroidninja/filepicker/utils/ImageCaptureManager;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Ldroidninja/filepicker/utils/ImageCaptureManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    .line 109
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    const/4 v3, 0x2

    .line 112
    .local v3, "spanCount":I
    const/4 v2, 0x5

    .line 113
    .local v2, "spacing":I
    const/4 v0, 0x0

    .line 114
    .local v0, "includeEdge":Z
    iget-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;

    invoke-direct {v5, v3, v2, v0}, Ldroidninja/filepicker/utils/GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 115
    iget-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 118
    iget-object v4, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;

    invoke-direct {v5, p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;-><init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 135
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getDataFromMedia()V

    .line 136
    return-void
.end method

.method public static newInstance(I)Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;
    .locals 3
    .param p0, "fileType"    # I

    .prologue
    .line 84
    new-instance v1, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-direct {v1}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;-><init>()V

    .line 85
    .local v1, "photoPickerFragment":Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "FILE_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v1, v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method private resumeRequestsIfNotDestroyed()V
    .locals 1

    .prologue
    .line 267
    invoke-static {p0}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_0
.end method

.method private updateList(Ljava/util/List;)V
    .locals 10
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
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 165
    const-string v0, "updateList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 176
    new-instance v7, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-direct {v7}, Ldroidninja/filepicker/models/PhotoDirectory;-><init>()V

    .line 177
    .local v7, "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    const-string v0, "ALL_PHOTOS_BUCKET_ID"

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setBucketId(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 181
    sget v0, Ldroidninja/filepicker/R$string;->all_videos:I

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setName(Ljava/lang/String;)V

    .line 190
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getDateAdded()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ldroidninja/filepicker/models/PhotoDirectory;->setDateAdded(J)V

    .line 193
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/Media;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setCoverPath(Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 197
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->addPhotos(Ljava/util/List;)V

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    .end local v6    # "i":I
    .end local v7    # "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 215
    :goto_2
    return-void

    .line 183
    .restart local v7    # "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    :cond_2
    iget v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    if-ne v0, v5, :cond_3

    .line 185
    sget v0, Ldroidninja/filepicker/R$string;->all_photos:I

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    sget v0, Ldroidninja/filepicker/R$string;->all_files:I

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .restart local v6    # "i":I
    :cond_4
    invoke-interface {p1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->setData(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 209
    :cond_5
    new-instance v0, Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget v9, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    if-ne v9, v5, :cond_6

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v9

    invoke-virtual {v9}, Ldroidninja/filepicker/PickerManager;->isEnableCamera()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    invoke-direct/range {v0 .. v5}, Ldroidninja/filepicker/adapters/FolderGridAdapter;-><init>(Landroid/content/Context;Lcom/bumptech/glide/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    .line 210
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->photoGridAdapter:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-virtual {v0, p0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->setFolderGridAdapterListener(Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;)V

    goto :goto_2

    :cond_6
    move v5, v8

    .line 209
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

    .line 240
    invoke-super {p0, p1, p2, p3}, Ldroidninja/filepicker/fragments/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    packed-switch p1, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 246
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    invoke-virtual {v1}, Ldroidninja/filepicker/utils/ImageCaptureManager;->galleryAddPic()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "imagePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 249
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 250
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    invoke-interface {v1}, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;->onItemSelected()V

    goto :goto_0

    .line 253
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$4;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$4;-><init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 69
    instance-of v0, p1, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .line 75
    return-void

    .line 72
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

.method public onCameraClicked()V
    .locals 5

    .prologue
    .line 220
    :try_start_0
    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->imageCaptureManager:Ldroidninja/filepicker/utils/ImageCaptureManager;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldroidninja/filepicker/utils/ImageCaptureManager;->dispatchTakePictureIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 222
    const/16 v2, 0x101

    invoke-virtual {p0, v1, v2}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 224
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Ldroidninja/filepicker/R$string;->no_camera_exists:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    sget v0, Ldroidninja/filepicker/R$layout;->fragment_media_folder_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Ldroidninja/filepicker/fragments/BaseFragment;->onDetach()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->mListener:Ldroidninja/filepicker/fragments/PhotoPickerFragmentListener;

    .line 81
    return-void
.end method

.method public onFolderClicked(Ldroidninja/filepicker/models/PhotoDirectory;)V
    .locals 3
    .param p1, "photoDirectory"    # Ldroidninja/filepicker/models/PhotoDirectory;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    const-string v1, "EXTRA_FILE_TYPE"

    iget v2, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
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
    .line 99
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->initView(Landroid/view/View;)V

    .line 101
    return-void
.end method
