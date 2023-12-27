.class public Ldroidninja/filepicker/adapters/FolderGridAdapter;
.super Ldroidninja/filepicker/adapters/SelectableAdapter;
.source "FolderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;,
        Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldroidninja/filepicker/adapters/SelectableAdapter",
        "<",
        "Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;",
        "Ldroidninja/filepicker/models/PhotoDirectory;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_CAMERA:I = 0x64

.field public static final ITEM_TYPE_PHOTO:I = 0x65


# instance fields
.field private final context:Landroid/content/Context;

.field private folderGridAdapterListener:Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

.field private final glide:Lcom/bumptech/glide/RequestManager;

.field private imageSize:I

.field private final showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p5, "showCamera"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    .local p4, "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p3, p4}, Ldroidninja/filepicker/adapters/SelectableAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 43
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->glide:Lcom/bumptech/glide/RequestManager;

    .line 45
    iput-boolean p5, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->showCamera:Z

    .line 46
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->setColumnNumber(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/adapters/FolderGridAdapter;)Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/adapters/FolderGridAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->folderGridAdapterListener:Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

    return-object v0
.end method

.method private setColumnNumber(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnNum"    # I

    .prologue
    .line 107
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 108
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 111
    .local v1, "widthPixels":I
    div-int v3, v1, p2

    iput v3, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->imageSize:I

    .line 112
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/16 v0, 0x65

    .line 58
    iget-boolean v1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->showCamera:Z

    if-eqz v1, :cond_0

    .line 59
    if-nez p1, :cond_0

    const/16 v0, 0x64

    .line 61
    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->showCamera:Z

    if-eqz v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .end local p2    # "position":I
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    .line 70
    .local v0, "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->glide:Lcom/bumptech/glide/RequestManager;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getCoverPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    iget v3, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->imageSize:I

    iget v4, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->imageSize:I

    .line 74
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget v3, Ldroidninja/filepicker/R$drawable;->image_placeholder:I

    .line 75
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 76
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 80
    :cond_1
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->folderTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->folderCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/PhotoDirectory;->getMedias()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Ldroidninja/filepicker/adapters/FolderGridAdapter$1;

    invoke-direct {v2, p0, v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter$1;-><init>(Ldroidninja/filepicker/adapters/FolderGridAdapter;Ldroidninja/filepicker/models/PhotoDirectory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->bottomOverlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .end local v0    # "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    :goto_0
    return-void

    .line 94
    .restart local p2    # "position":I
    :cond_2
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getCameraDrawable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Ldroidninja/filepicker/adapters/FolderGridAdapter$2;

    invoke-direct {v2, p0}, Ldroidninja/filepicker/adapters/FolderGridAdapter$2;-><init>(Ldroidninja/filepicker/adapters/FolderGridAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->bottomOverlay:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 51
    iget-object v1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$layout;->item_folder_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;

    invoke-direct {v1, v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setFolderGridAdapterListener(Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;)V
    .locals 0
    .param p1, "onClickListener"    # Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

    .prologue
    .line 123
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter;->folderGridAdapterListener:Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

    .line 124
    return-void
.end method
