.class public Ldroidninja/filepicker/MediaDetailsActivity;
.super Ldroidninja/filepicker/BaseFilePickerActivity;
.source "MediaDetailsActivity.java"

# interfaces
.implements Ldroidninja/filepicker/adapters/FileAdapterListener;


# static fields
.field private static final SCROLL_THRESHOLD:I = 0x1e


# instance fields
.field private emptyView:Landroid/widget/TextView;

.field private fileType:I

.field private mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

.field private photoDirectory:Ldroidninja/filepicker/models/PhotoDirectory;

.field private photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private selectAllItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ldroidninja/filepicker/BaseFilePickerActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/MediaDetailsActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/MediaDetailsActivity;

    .prologue
    .line 38
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method static synthetic access$100(Ldroidninja/filepicker/MediaDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/MediaDetailsActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->resumeRequestsIfNotDestroyed()V

    return-void
.end method

.method static synthetic access$200(Ldroidninja/filepicker/MediaDetailsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/MediaDetailsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ldroidninja/filepicker/MediaDetailsActivity;->updateList(Ljava/util/List;)V

    return-void
.end method

.method private getDataFromMedia(Ljava/lang/String;)V
    .locals 3
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "mediaStoreArgs":Landroid/os/Bundle;
    const-string v1, "SHOW_GIF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    const-string v1, "EXTRA_BUCKET_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "EXTRA_FILE_TYPE"

    iget v2, p0, Ldroidninja/filepicker/MediaDetailsActivity;->fileType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    iget v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->fileType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 123
    new-instance v1, Ldroidninja/filepicker/MediaDetailsActivity$2;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/MediaDetailsActivity$2;-><init>(Ldroidninja/filepicker/MediaDetailsActivity;)V

    invoke-static {p0, v0, v1}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getPhotoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->fileType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 133
    new-instance v1, Ldroidninja/filepicker/MediaDetailsActivity$3;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/MediaDetailsActivity$3;-><init>(Ldroidninja/filepicker/MediaDetailsActivity;)V

    invoke-static {p0, v0, v1}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getVideoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    goto :goto_0
.end method

.method private resumeRequestsIfNotDestroyed()V
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    goto :goto_0
.end method

.method private setUpView(Ldroidninja/filepicker/models/PhotoDirectory;)V
    .locals 3
    .param p1, "photoDirectory"    # Ldroidninja/filepicker/models/PhotoDirectory;

    .prologue
    .line 87
    sget v1, Ldroidninja/filepicker/R$id;->recyclerview:I

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    sget v1, Ldroidninja/filepicker/R$id;->empty_view:I

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->emptyView:Landroid/widget/TextView;

    .line 90
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 91
    .local v0, "layoutManager":Landroid/support/v7/widget/StaggeredGridLayoutManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 92
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 95
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Ldroidninja/filepicker/MediaDetailsActivity$1;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/MediaDetailsActivity$1;-><init>(Ldroidninja/filepicker/MediaDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 112
    invoke-virtual {p1}, Ldroidninja/filepicker/models/PhotoDirectory;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->getDataFromMedia(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private updateList(Ljava/util/List;)V
    .locals 8
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
    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v3, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/Media;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 146
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ldroidninja/filepicker/MediaDetailsActivity$4;

    invoke-direct {v0, p0}, Ldroidninja/filepicker/MediaDetailsActivity$4;-><init>(Ldroidninja/filepicker/MediaDetailsActivity;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 157
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0, v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->setData(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->notifyDataSetChanged()V

    .line 177
    :goto_1
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 178
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getSelectedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    sget v1, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 184
    :cond_1
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/MediaDetailsActivity;->setTitle(I)V

    .line 186
    :cond_2
    :goto_2
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 173
    :cond_4
    new-instance v0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    iget-object v2, p0, Ldroidninja/filepicker/MediaDetailsActivity;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getSelectedPhotos()Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;-><init>(Landroid/content/Context;Lcom/bumptech/glide/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLdroidninja/filepicker/adapters/FileAdapterListener;)V

    iput-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    .line 174
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    .line 57
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iput-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->mGlideRequestManager:Lcom/bumptech/glide/RequestManager;

    .line 58
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "EXTRA_FILE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->fileType:I

    .line 62
    const-class v1, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ldroidninja/filepicker/models/PhotoDirectory;

    iput-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoDirectory:Ldroidninja/filepicker/models/PhotoDirectory;

    .line 63
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoDirectory:Ldroidninja/filepicker/models/PhotoDirectory;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoDirectory:Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-direct {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->setUpView(Ldroidninja/filepicker/models/PhotoDirectory;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->setTitle(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->finish()V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    sget v0, Ldroidninja/filepicker/R$layout;->activity_media_details:I

    invoke-super {p0, p1, v0}, Ldroidninja/filepicker/BaseFilePickerActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 198
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ldroidninja/filepicker/R$menu;->media_detail_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    sget v0, Ldroidninja/filepicker/R$id;->action_select:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    .line 200
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->hasSelectAll()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    invoke-super {p0, p1}, Ldroidninja/filepicker/BaseFilePickerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected()V
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v0

    .line 240
    .local v0, "maxCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 241
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ldroidninja/filepicker/MediaDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->finish()V

    .line 244
    :cond_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->setTitle(I)V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 207
    .local v0, "itemId":I
    sget v1, Ldroidninja/filepicker/R$id;->action_done:I

    if-ne v0, v1, :cond_1

    .line 208
    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Ldroidninja/filepicker/MediaDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->finish()V

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    sget v1, Ldroidninja/filepicker/R$id;->action_select:I

    if-ne v0, v1, :cond_4

    .line 213
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    iget-object v3, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldroidninja/filepicker/PickerManager;->deleteMedia(Ljava/util/ArrayList;)V

    .line 216
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->clearSelection()V

    .line 218
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_deselect_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    :goto_1
    iget-object v3, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 226
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ldroidninja/filepicker/MediaDetailsActivity;->setTitle(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->selectAll()V

    .line 222
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    iget-object v3, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoGridAdapter:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-virtual {v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ldroidninja/filepicker/PickerManager;->add(Ljava/util/ArrayList;I)V

    .line 223
    iget-object v1, p0, Ldroidninja/filepicker/MediaDetailsActivity;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 225
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 230
    :cond_4
    const v1, 0x102002c

    if-ne v0, v1, :cond_5

    .line 231
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->onBackPressed()V

    goto :goto_0

    .line 234
    :cond_5
    invoke-super {p0, p1}, Ldroidninja/filepicker/BaseFilePickerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-virtual {p0}, Ldroidninja/filepicker/MediaDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v1

    .line 76
    .local v1, "maxCount":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-lez p1, :cond_1

    .line 77
    sget v2, Ldroidninja/filepicker/R$string;->attachments_num:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/MediaDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    .end local v1    # "maxCount":I
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1    # "maxCount":I
    :cond_1
    if-lez v1, :cond_2

    if-lez p1, :cond_2

    .line 79
    sget v2, Ldroidninja/filepicker/R$string;->attachments_title_text:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/MediaDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v2, p0, Ldroidninja/filepicker/MediaDetailsActivity;->photoDirectory:Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v2}, Ldroidninja/filepicker/models/PhotoDirectory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
