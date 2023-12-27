.class public Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "RationaleDialogFragmentCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragmentCompat"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;I[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
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
    .line 30
    new-instance v6, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    invoke-direct {v6}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;-><init>()V

    .line 33
    .local v6, "dialogFragment":Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(IILjava/lang/String;I[Ljava/lang/String;)V

    .line 35
    .local v0, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    invoke-virtual {v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6, v1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v6
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 48
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->setCancelable(Z)V

    .line 63
    new-instance v1, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    .line 64
    .local v1, "config":Lpub/devrel/easypermissions/RationaleDialogConfig;
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-direct {v0, p0, v1, v2}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;)V

    .line 68
    .local v0, "clickListener":Lpub/devrel/easypermissions/RationaleDialogClickListener;
    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onDetach()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 54
    return-void
.end method
