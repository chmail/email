.class public Ldroidninja/filepicker/fragments/DocFragment;
.super Ldroidninja/filepicker/fragments/BaseFragment;
.source "DocFragment.java"

# interfaces
.implements Ldroidninja/filepicker/adapters/FileAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field emptyView:Landroid/widget/TextView;

.field private fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

.field private mListener:Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private selectAllItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Ldroidninja/filepicker/fragments/DocFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/fragments/DocFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/BaseFragment;-><init>()V

    .line 37
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    sget v0, Ldroidninja/filepicker/R$id;->recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 98
    sget v0, Ldroidninja/filepicker/R$id;->empty_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->emptyView:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public static newInstance(Ldroidninja/filepicker/models/FileType;)Ldroidninja/filepicker/fragments/DocFragment;
    .locals 3
    .param p0, "fileType"    # Ldroidninja/filepicker/models/FileType;

    .prologue
    .line 66
    new-instance v1, Ldroidninja/filepicker/fragments/DocFragment;

    invoke-direct {v1}, Ldroidninja/filepicker/fragments/DocFragment;-><init>()V

    .line 67
    .local v1, "photoPickerFragment":Ldroidninja/filepicker/fragments/DocFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "bun":Landroid/os/Bundle;
    const-string v2, "FILE_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    invoke-virtual {v1, v0}, Ldroidninja/filepicker/fragments/DocFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public getFileType()Ldroidninja/filepicker/models/FileType;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FILE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/FileType;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 47
    instance-of v0, p1, Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ldroidninja/filepicker/fragments/DocFragment;->mListener:Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    .line 53
    return-void

    .line 50
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
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
    .line 61
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Ldroidninja/filepicker/PickerManager;->hasSelectAll()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/DocFragment;->setHasOptionsMenu(Z)V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 129
    sget v0, Ldroidninja/filepicker/R$menu;->select_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    sget v0, Ldroidninja/filepicker/R$id;->action_select:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->onItemSelected()V

    .line 132
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget v0, Ldroidninja/filepicker/R$layout;->fragment_photo_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Ldroidninja/filepicker/fragments/BaseFragment;->onDetach()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->mListener:Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    .line 58
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->mListener:Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    invoke-interface {v0}, Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;->onItemSelected()V

    .line 79
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/FileListAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/FileListAdapter;->getSelectedItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v1, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 82
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 85
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 137
    .local v0, "itemId":I
    sget v1, Ldroidninja/filepicker/R$id;->action_select:I

    if-ne v0, v1, :cond_4

    .line 138
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/FileListAdapter;->clearSelection()V

    .line 142
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->clearSelections()V

    .line 144
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_deselect_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    :cond_0
    :goto_0
    iget-object v3, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 152
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->mListener:Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;

    invoke-interface {v1}, Ldroidninja/filepicker/fragments/DocFragment$DocFragmentListener;->onItemSelected()V

    .line 156
    :cond_1
    :goto_2
    return v2

    .line 147
    :cond_2
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v1}, Ldroidninja/filepicker/adapters/FileListAdapter;->selectAll()V

    .line 148
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    iget-object v3, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v3}, Ldroidninja/filepicker/adapters/FileListAdapter;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ldroidninja/filepicker/PickerManager;->add(Ljava/util/ArrayList;I)V

    .line 149
    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->selectAllItem:Landroid/view/MenuItem;

    sget v3, Ldroidninja/filepicker/R$drawable;->ic_select_all:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 151
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 156
    :cond_4
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/DocFragment;->initView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 107
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/adapters/FileListAdapter;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    .line 111
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ldroidninja/filepicker/adapters/FileListAdapter;

    .line 113
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v2

    invoke-virtual {v2}, Ldroidninja/filepicker/PickerManager;->getSelectedFiles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p0}, Ldroidninja/filepicker/adapters/FileListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ldroidninja/filepicker/adapters/FileAdapterListener;)V

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    .line 116
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    :goto_1
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocFragment;->onItemSelected()V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/adapters/FileListAdapter;->setData(Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->fileListAdapter:Ldroidninja/filepicker/adapters/FileListAdapter;

    invoke-virtual {v0}, Ldroidninja/filepicker/adapters/FileListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
