.class public Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppSettingsDialogHolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static createShowDialogIntent(Landroid/content/Context;Lpub/devrel/easypermissions/AppSettingsDialog;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lpub/devrel/easypermissions/AppSettingsDialog;

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_app_settings"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p2, p3}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(ILandroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    .line 50
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_app_settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    .line 25
    .local v0, "dialog":Lpub/devrel/easypermissions/AppSettingsDialog;
    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setContext(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 28
    invoke-virtual {v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->showDialog()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 34
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 37
    :cond_0
    return-void
.end method
