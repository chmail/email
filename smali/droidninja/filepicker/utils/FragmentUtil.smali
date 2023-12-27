.class public Ldroidninja/filepicker/utils/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragment(Landroid/support/v7/app/AppCompatActivity;ILdroidninja/filepicker/fragments/BaseFragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "contentId"    # I
    .param p2, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 32
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Ldroidninja/filepicker/R$anim;->slide_left_in:I

    sget v2, Ldroidninja/filepicker/R$anim;->slide_left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    return-void
.end method

.method public static attachFragment(Landroid/support/v7/app/AppCompatActivity;Ldroidninja/filepicker/fragments/BaseFragment;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 62
    return-void
.end method

.method public static detachFragment(Landroid/support/v7/app/AppCompatActivity;Ldroidninja/filepicker/fragments/BaseFragment;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    return-void
.end method

.method public static getFragmentByTag(Landroid/support/v7/app/AppCompatActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "appCompatActivity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static hadFragment(Landroid/support/v7/app/AppCompatActivity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideFragment(Landroid/support/v7/app/AppCompatActivity;Ldroidninja/filepicker/fragments/BaseFragment;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    return-void
.end method

.method public static removeFragment(Landroid/support/v7/app/AppCompatActivity;Ldroidninja/filepicker/fragments/BaseFragment;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    return-void
.end method

.method public static replaceFragment(Landroid/support/v7/app/AppCompatActivity;ILdroidninja/filepicker/fragments/BaseFragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "contentId"    # I
    .param p2, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Ldroidninja/filepicker/R$anim;->slide_left_in:I

    sget v2, Ldroidninja/filepicker/R$anim;->slide_left_out:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 26
    return-void
.end method

.method public static showFragment(Landroid/support/v7/app/AppCompatActivity;Ldroidninja/filepicker/fragments/BaseFragment;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "fragment"    # Ldroidninja/filepicker/fragments/BaseFragment;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 50
    return-void
.end method
