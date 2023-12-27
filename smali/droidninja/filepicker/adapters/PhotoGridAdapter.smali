.class public Ldroidninja/filepicker/adapters/PhotoGridAdapter;
.super Ldroidninja/filepicker/adapters/SelectableAdapter;
.source "PhotoGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldroidninja/filepicker/adapters/SelectableAdapter",
        "<",
        "Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;",
        "Ldroidninja/filepicker/models/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_CAMERA:I = 0x64

.field public static final ITEM_TYPE_PHOTO:I = 0x65


# instance fields
.field private cameraOnClickListener:Landroid/view/View$OnClickListener;

.field private final context:Landroid/content/Context;

.field private final glide:Lcom/bumptech/glide/RequestManager;

.field private imageSize:I

.field private final mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

.field private final showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/RequestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLdroidninja/filepicker/adapters/FileAdapterListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestManager"    # Lcom/bumptech/glide/RequestManager;
    .param p5, "showCamera"    # Z
    .param p6, "photoGridAdapterListener"    # Ldroidninja/filepicker/adapters/FileAdapterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/Media;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ldroidninja/filepicker/adapters/FileAdapterListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/Media;>;"
    .local p4, "selectedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p3, p4}, Ldroidninja/filepicker/adapters/SelectableAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 45
    iput-object p1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->glide:Lcom/bumptech/glide/RequestManager;

    .line 47
    iput-boolean p5, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->showCamera:Z

    .line 48
    iput-object p6, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    .line 49
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->setColumnNumber(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter;
    .param p1, "x1"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
    .param p2, "x2"    # Ldroidninja/filepicker/models/Media;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->onItemClicked(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V

    return-void
.end method

.method static synthetic access$100(Ldroidninja/filepicker/adapters/PhotoGridAdapter;)Ldroidninja/filepicker/adapters/FileAdapterListener;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    return-object v0
.end method

.method private onItemClicked(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V
    .locals 3
    .param p1, "holder"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
    .param p2, "media"    # Ldroidninja/filepicker/models/Media;

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 147
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {p2}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    invoke-interface {v0}, Ldroidninja/filepicker/adapters/FileAdapterListener;->onItemSelected()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->shouldAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :cond_2
    iget-object v2, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    iget-object v0, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(ZZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setColumnNumber(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnNum"    # I

    .prologue
    .line 157
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 158
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    .local v1, "widthPixels":I
    div-int v3, v1, p2

    iput v3, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->imageSize:I

    .line 162
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItems()Ljava/util/List;

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

    .line 61
    iget-boolean v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->showCamera:Z

    if-eqz v1, :cond_0

    .line 62
    if-nez p1, :cond_0

    const/16 v0, 0x64

    .line 64
    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 69
    invoke-virtual {p0, p2}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v4, 0x65

    if-ne v1, v4, :cond_5

    .line 71
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget-boolean v4, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->showCamera:Z

    if-eqz v4, :cond_0

    add-int/lit8 p2, p2, -0x1

    .end local p2    # "position":I
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/Media;

    .line 73
    .local v0, "media":Ldroidninja/filepicker/models/Media;
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldroidninja/filepicker/utils/AndroidLifecycleUtils;->canLoadImage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->glide:Lcom/bumptech/glide/RequestManager;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->centerCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    iget v5, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->imageSize:I

    iget v6, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->imageSize:I

    .line 77
    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    sget v5, Ldroidninja/filepicker/R$drawable;->image_placeholder:I

    .line 78
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    .line 75
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 79
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v4, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 84
    :cond_1
    invoke-virtual {v0}, Ldroidninja/filepicker/models/Media;->getMediaType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 85
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Ldroidninja/filepicker/adapters/PhotoGridAdapter$1;

    invoke-direct {v4, p0, p1, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter$1;-><init>(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v1, v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 98
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnCheckedChangeListener(Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 99
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    new-instance v4, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;

    invoke-direct {v4, p0, p1, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter$2;-><init>(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;Ldroidninja/filepicker/models/Media;)V

    invoke-virtual {v1, v4}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(Z)V

    .line 109
    iget-object v4, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->selectBg:Landroid/view/View;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 112
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    new-instance v2, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;

    invoke-direct {v2, p0, v0, p1}, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;-><init>(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/models/Media;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;)V

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnCheckedChangeListener(Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 142
    .end local v0    # "media":Ldroidninja/filepicker/models/Media;
    :goto_3
    return-void

    .line 87
    .restart local v0    # "media":Ldroidninja/filepicker/models/Media;
    :cond_2
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 109
    goto :goto_1

    :cond_4
    move v2, v3

    .line 110
    goto :goto_2

    .line 137
    .end local v0    # "media":Ldroidninja/filepicker/models/Media;
    .restart local p2    # "position":I
    :cond_5
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getCameraDrawable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v1, v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 139
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->cameraOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->videoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    iget-object v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$layout;->item_photo_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    invoke-direct {v1, v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setCameraListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 173
    iput-object p1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->cameraOnClickListener:Landroid/view/View$OnClickListener;

    .line 174
    return-void
.end method
