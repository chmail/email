.class public Ldroidninja/filepicker/fragments/DocPickerFragment;
.super Ldroidninja/filepicker/fragments/BaseFragment;
.source "DocPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldroidninja/filepicker/fragments/DocPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/BaseFragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Ldroidninja/filepicker/fragments/DocPickerFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/DocPickerFragment;

    .prologue
    .line 31
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Ldroidninja/filepicker/fragments/DocPickerFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ldroidninja/filepicker/fragments/DocPickerFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment;->setDataOnFragments(Ljava/util/List;)V

    return-void
.end method

.method private filterDocuments([Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "documents":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    new-instance v0, Ldroidninja/filepicker/fragments/DocPickerFragment$2;

    invoke-direct {v0, p0, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment$2;-><init>(Ldroidninja/filepicker/fragments/DocPickerFragment;[Ljava/lang/String;)V

    .line 155
    .local v0, "docType":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Ldroidninja/filepicker/models/Document;>;"
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0}, Ldroidninja/filepicker/utils/Utils;->filter(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->setUpViewPager()V

    .line 91
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->setData()V

    .line 92
    return-void
.end method

.method public static newInstance()Ldroidninja/filepicker/fragments/DocPickerFragment;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-direct {v0}, Ldroidninja/filepicker/fragments/DocPickerFragment;-><init>()V

    .line 62
    .local v0, "docPickerFragment":Ldroidninja/filepicker/fragments/DocPickerFragment;
    return-object v0
.end method

.method private setData()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/fragments/DocPickerFragment$1;

    invoke-direct {v1, p0}, Ldroidninja/filepicker/fragments/DocPickerFragment$1;-><init>(Ldroidninja/filepicker/fragments/DocPickerFragment;)V

    invoke-static {v0, v1}, Ldroidninja/filepicker/utils/MediaStoreHelper;->getDocs(Landroid/support/v4/app/FragmentActivity;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    .line 112
    return-void
.end method

.method private setDataOnFragments(Ljava/util/List;)V
    .locals 7
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
    .line 115
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    iget-object v4, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    check-cast v3, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;

    .line 116
    .local v3, "sectionsPagerAdapter":Ldroidninja/filepicker/adapters/SectionsPagerAdapter;
    if-eqz v3, :cond_1

    .line 118
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v3}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 119
    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android:switcher:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Ldroidninja/filepicker/R$id;->viewPager:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/fragments/DocFragment;

    .line 122
    .local v0, "docFragment":Ldroidninja/filepicker/fragments/DocFragment;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ldroidninja/filepicker/fragments/DocFragment;->getFileType()Ldroidninja/filepicker/models/FileType;

    move-result-object v1

    .line 125
    .local v1, "fileType":Ldroidninja/filepicker/models/FileType;
    if-eqz v1, :cond_0

    .line 126
    iget-object v4, v1, Ldroidninja/filepicker/models/FileType;->extensions:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment;->filterDocuments([Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ldroidninja/filepicker/fragments/DocFragment;->updateList(Ljava/util/List;)V

    .line 118
    .end local v1    # "fileType":Ldroidninja/filepicker/models/FileType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "docFragment":Ldroidninja/filepicker/fragments/DocFragment;
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method private setUpViewPager()V
    .locals 6

    .prologue
    .line 133
    new-instance v0, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, v4}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 134
    .local v0, "adapter":Ldroidninja/filepicker/adapters/SectionsPagerAdapter;
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v4

    invoke-virtual {v4}, Ldroidninja/filepicker/PickerManager;->getFileTypes()Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, "supportedTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/FileType;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 136
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldroidninja/filepicker/models/FileType;

    invoke-static {v4}, Ldroidninja/filepicker/fragments/DocFragment;->newInstance(Ldroidninja/filepicker/models/FileType;)Ldroidninja/filepicker/fragments/DocFragment;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldroidninja/filepicker/models/FileType;

    iget-object v4, v4, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v4, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 140
    iget-object v4, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v4, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v5, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 143
    new-instance v2, Ldroidninja/filepicker/utils/TabLayoutHelper;

    iget-object v4, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v5, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, v4, v5}, Ldroidninja/filepicker/utils/TabLayoutHelper;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V

    .line 144
    .local v2, "mTabLayoutHelper":Ldroidninja/filepicker/utils/TabLayoutHelper;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ldroidninja/filepicker/utils/TabLayoutHelper;->setAutoAdjustTabModeEnabled(Z)V

    .line 145
    return-void
.end method

.method private setViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 95
    sget v0, Ldroidninja/filepicker/R$id;->tabs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 96
    sget v0, Ldroidninja/filepicker/R$id;->viewPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 97
    sget v0, Ldroidninja/filepicker/R$id;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 99
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 100
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 68
    instance-of v0, p1, Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->mListener:Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;

    .line 74
    return-void

    .line 71
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement DocPickerFragmentListener"

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
    .line 49
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->setHasOptionsMenu(Z)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget v0, Ldroidninja/filepicker/R$layout;->fragment_doc_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Ldroidninja/filepicker/fragments/BaseFragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment;->mListener:Ldroidninja/filepicker/fragments/DocPickerFragment$DocPickerFragmentListener;

    .line 80
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
    .line 84
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment;->setViews(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->initView()V

    .line 87
    return-void
.end method
