.class public Ldroidninja/filepicker/fragments/MediaPickerFragment;
.super Ldroidninja/filepicker/fragments/BaseFragment;
.source "MediaPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;
    }
.end annotation


# instance fields
.field private mListener:Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ldroidninja/filepicker/fragments/BaseFragment;-><init>()V

    .line 27
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 75
    sget v1, Ldroidninja/filepicker/R$id;->tabs:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 76
    sget v1, Ldroidninja/filepicker/R$id;->viewPager:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 78
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 80
    new-instance v0, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;

    invoke-virtual {p0}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 82
    .local v0, "adapter":Ldroidninja/filepicker/adapters/SectionsPagerAdapter;
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->showImages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->isShowFolderView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v3}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->newInstance(I)Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$string;->images:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->showVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    invoke-virtual {v1}, Ldroidninja/filepicker/PickerManager;->isShowFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {v4}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->newInstance(I)Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$string;->videos:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 103
    return-void

    .line 86
    :cond_0
    invoke-static {v3}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->newInstance(I)Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$string;->images:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v4}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->newInstance(I)Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    move-result-object v1

    sget v2, Ldroidninja/filepicker/R$string;->videos:I

    invoke-virtual {p0, v2}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldroidninja/filepicker/adapters/SectionsPagerAdapter;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_3
    iget-object v1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static newInstance()Ldroidninja/filepicker/fragments/MediaPickerFragment;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ldroidninja/filepicker/fragments/MediaPickerFragment;

    invoke-direct {v0}, Ldroidninja/filepicker/fragments/MediaPickerFragment;-><init>()V

    .line 56
    .local v0, "photoPickerFragment":Ldroidninja/filepicker/fragments/MediaPickerFragment;
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 40
    instance-of v0, p1, Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->mListener:Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;

    .line 46
    return-void

    .line 43
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement MediaPickerFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Ldroidninja/filepicker/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    sget v0, Ldroidninja/filepicker/R$layout;->fragment_media_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Ldroidninja/filepicker/fragments/BaseFragment;->onDetach()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ldroidninja/filepicker/fragments/MediaPickerFragment;->mListener:Ldroidninja/filepicker/fragments/MediaPickerFragment$MediaPickerFragmentListener;

    .line 52
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
    .line 70
    invoke-super {p0, p1, p2}, Ldroidninja/filepicker/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0, p1}, Ldroidninja/filepicker/fragments/MediaPickerFragment;->initView(Landroid/view/View;)V

    .line 72
    return-void
.end method
