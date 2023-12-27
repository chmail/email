.class public Llayout/BlankFragment;
.super Landroid/support/v4/app/Fragment;
.source "BlankFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/BlankFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"


# instance fields
.field private mListener:Llayout/BlankFragment$OnFragmentInteractionListener;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 42
    .local v1, "h":Landroid/os/Handler;
    new-instance v4, Landroid/support/design/widget/TabLayout;

    invoke-virtual {p0}, Llayout/BlankFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v4, "t":Landroid/support/design/widget/TabLayout;
    new-instance v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0}, Llayout/BlankFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "dr":Landroid/support/v4/widget/DrawerLayout;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 46
    const v5, 0x800003

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 48
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 49
    .local v3, "sList":Landroid/graphics/drawable/StateListDrawable;
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Llayout/BlankFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, "lv":Landroid/widget/ListView;
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Llayout/BlankFragment;
    .locals 3
    .param p0, "param1"    # Ljava/lang/String;
    .param p1, "param2"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v1, Llayout/BlankFragment;

    invoke-direct {v1}, Llayout/BlankFragment;-><init>()V

    .line 64
    .local v1, "fragment":Llayout/BlankFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "param1"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "param2"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1, v0}, Llayout/BlankFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 98
    instance-of v0, p1, Llayout/BlankFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Llayout/BlankFragment$OnFragmentInteractionListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Llayout/BlankFragment;->mListener:Llayout/BlankFragment$OnFragmentInteractionListener;

    .line 104
    return-void

    .line 101
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    iget-object v0, p0, Llayout/BlankFragment;->mListener:Llayout/BlankFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Llayout/BlankFragment;->mListener:Llayout/BlankFragment$OnFragmentInteractionListener;

    invoke-interface {v0, p1}, Llayout/BlankFragment$OnFragmentInteractionListener;->onFragmentInteraction(Landroid/net/Uri;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Llayout/BlankFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Llayout/BlankFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/BlankFragment;->mParam1:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Llayout/BlankFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llayout/BlankFragment;->mParam2:Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Llayout/BlankFragment;->mListener:Llayout/BlankFragment$OnFragmentInteractionListener;

    .line 110
    return-void
.end method
