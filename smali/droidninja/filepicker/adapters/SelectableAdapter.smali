.class public abstract Ldroidninja/filepicker/adapters/SelectableAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectableAdapter.java"

# interfaces
.implements Ldroidninja/filepicker/adapters/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "T:",
        "Ldroidninja/filepicker/models/BaseFile;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;",
        "Ldroidninja/filepicker/adapters/Selectable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected selectedPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ldroidninja/filepicker/adapters/SelectableAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/adapters/SelectableAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "selectedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    .line 23
    invoke-direct {p0, p2}, Ldroidninja/filepicker/adapters/SelectableAdapter;->addPathsToSelections(Ljava/util/List;)V

    .line 24
    return-void
.end method

.method private addPathsToSelections(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    .local p1, "selectedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 36
    :cond_0
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 30
    const/4 v1, 0x0

    .local v1, "jindex":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 31
    iget-object v2, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldroidninja/filepicker/models/BaseFile;

    invoke-virtual {v2}, Ldroidninja/filepicker/models/BaseFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    iget-object v2, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    iget-object v3, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/SelectableAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPaths()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldroidninja/filepicker/models/BaseFile;

    invoke-virtual {v2}, Ldroidninja/filepicker/models/BaseFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v1
.end method

.method public isSelected(Ldroidninja/filepicker/models/BaseFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    .local p1, "photo":Ldroidninja/filepicker/models/BaseFile;, "TT;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    check-cast p1, Ldroidninja/filepicker/models/BaseFile;

    invoke-virtual {p0, p1}, Ldroidninja/filepicker/adapters/SelectableAdapter;->isSelected(Ldroidninja/filepicker/models/BaseFile;)Z

    move-result v0

    return v0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    iget-object v1, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {p0}, Ldroidninja/filepicker/adapters/SelectableAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->items:Ljava/util/List;

    .line 81
    return-void
.end method

.method public toggleSelection(Ldroidninja/filepicker/models/BaseFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    .local p1, "photo":Ldroidninja/filepicker/models/BaseFile;, "TT;"
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/adapters/SelectableAdapter;->selectedPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic toggleSelection(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Ldroidninja/filepicker/adapters/SelectableAdapter;, "Ldroidninja/filepicker/adapters/SelectableAdapter<TVH;TT;>;"
    check-cast p1, Ldroidninja/filepicker/models/BaseFile;

    invoke-virtual {p0, p1}, Ldroidninja/filepicker/adapters/SelectableAdapter;->toggleSelection(Ldroidninja/filepicker/models/BaseFile;)V

    return-void
.end method
