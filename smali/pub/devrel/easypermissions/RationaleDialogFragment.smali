.class public Lpub/devrel/easypermissions/RationaleDialogFragment;
.super Landroid/app/DialogFragment;
.source "RationaleDialogFragment.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragment"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;I[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;
    .locals 7
    .param p0, "positiveButton"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "negativeButton"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "rationaleMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v6, Lpub/devrel/easypermissions/RationaleDialogFragment;

    invoke-direct {v6}, Lpub/devrel/easypermissions/RationaleDialogFragment;-><init>()V

    .line 34
    .local v6, "dialogFragment":Lpub/devrel/easypermissions/RationaleDialogFragment;
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(IILjava/lang/String;I[Ljava/lang/String;)V

    .line 36
    .local v0, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    invoke-virtual {v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6, v1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v6
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 49
    .local v0, "isAtLeastJellyBeanMR1":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 56
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_1
    return-void

    .line 47
    .end local v0    # "isAtLeastJellyBeanMR1":Z
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    .restart local v0    # "isAtLeastJellyBeanMR1":Z
    :cond_2
    instance-of v1, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v1, :cond_0

    .line 54
    check-cast p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setCancelable(Z)V

    .line 71
    new-instance v1, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    .line 72
    .local v1, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-direct {v0, p0, v1, v2}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;)V

    .line 76
    .local v0, "clickListener":Lpub/devrel/easypermissions/RationaleDialogClickListener;
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 62
    return-void
.end method
