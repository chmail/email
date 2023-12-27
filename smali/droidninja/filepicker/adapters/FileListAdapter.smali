.class public Ldroidninja/filepicker/adapters/FileListAdapter;
.super Ldroidninja/filepicker/adapters/SelectableAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldroidninja/filepicker/adapters/SelectableAdapter",
        "<",
        "Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;",
        "Ldroidninja/filepicker/models/Document;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ldroidninja/filepicker/adapters/FileAdapterListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "fileAdapterListener"    # Ldroidninja/filepicker/adapters/FileAdapterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ldroidninja/filepicker/adapters/FileAdapterListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    .local p3, "selectedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Ldroidninja/filepicker/adapters/SelectableAdapter;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 32
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p4, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    .line 34
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/adapters/FileListAdapter;
    .param p1, "x1"    # Ldroidninja/filepicker/models/Document;
    .param p2, "x2"    # Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ldroidninja/filepicker/adapters/FileListAdapter;->onItemClicked(Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V

    return-void
.end method

.method private onItemClicked(Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V
    .locals 5
    .param p1, "document"    # Ldroidninja/filepicker/models/Document;
    .param p2, "holder"    # Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getMaxCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 86
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {p1}, Ldroidninja/filepicker/models/Document;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->mListener:Ldroidninja/filepicker/adapters/FileAdapterListener;

    invoke-interface {v0}, Ldroidninja/filepicker/adapters/FileAdapterListener;->onItemSelected()V

    .line 102
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v2, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {p1}, Ldroidninja/filepicker/models/Document;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ldroidninja/filepicker/PickerManager;->remove(Ljava/lang/String;I)V

    .line 91
    iget-object v2, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    iget-object v3, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(ZZ)V

    .line 92
    iget-object v0, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->shouldAdd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {p1}, Ldroidninja/filepicker/models/Document;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 95
    iget-object v3, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    iget-object v2, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(ZZ)V

    .line 96
    iget-object v1, p2, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v1, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v2, v0

    .line 95
    goto :goto_1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/FileListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/FileListAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/FileListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/Document;

    .line 47
    .local v0, "document":Ldroidninja/filepicker/models/Document;
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Document;->getFileType()Ldroidninja/filepicker/models/FileType;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/models/FileType;->getDrawable()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->fileNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->fileSizeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Document;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Ldroidninja/filepicker/adapters/FileListAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Ldroidninja/filepicker/adapters/FileListAdapter$1;-><init>(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnCheckedChangeListener(Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 60
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    new-instance v2, Ldroidninja/filepicker/adapters/FileListAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Ldroidninja/filepicker/adapters/FileListAdapter$2;-><init>(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/FileListAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setChecked(Z)V

    .line 70
    iget-object v2, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/FileListAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Ldroidninja/filepicker/R$color;->bg_gray:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget-object v2, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/adapters/FileListAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 73
    iget-object v1, p1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    new-instance v2, Ldroidninja/filepicker/adapters/FileListAdapter$3;

    invoke-direct {v2, p0, v0, p1}, Ldroidninja/filepicker/adapters/FileListAdapter$3;-><init>(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setOnCheckedChangeListener(Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 80
    return-void

    .line 70
    :cond_0
    const v1, 0x106000b

    goto :goto_0

    .line 71
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/adapters/FileListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    iget-object v1, p0, Ldroidninja/filepicker/adapters/FileListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$layout;->item_doc_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    invoke-direct {v1, v0}, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
