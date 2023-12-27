.class public abstract Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;
.super Lpub/devrel/easypermissions/helper/PermissionHelper;
.source "BaseFrameworkPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpub/devrel/easypermissions/helper/PermissionHelper",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public abstract getFragmentManager()Landroid/app/FragmentManager;
.end method

.method public varargs showRequestPermissionRationale(Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 3
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positiveButton"    # I
    .param p3, "negativeButton"    # I
    .param p4, "requestCode"    # I
    .param p5, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .prologue
    .line 28
    .line 29
    .local p0, "this":Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;, "Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper<TT;>;"
    invoke-static {p2, p3, p1, p4, p5}, Lpub/devrel/easypermissions/RationaleDialogFragment;->newInstance(IILjava/lang/String;I[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lpub/devrel/easypermissions/helper/BaseFrameworkPermissionsHelper;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RationaleDialogFragment"

    invoke-virtual {v0, v1, v2}, Lpub/devrel/easypermissions/RationaleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    return-void
.end method
