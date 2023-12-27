.class public abstract Lpub/devrel/easypermissions/helper/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionHelper"


# instance fields
.field private mHost:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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
    .line 54
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    .local p1, "host":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lpub/devrel/easypermissions/helper/PermissionHelper;->mHost:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 2
    .param p0, "host"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v0, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/ActivityPermissionHelper;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 2
    .param p0, "host"    # Landroid/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 44
    new-instance v0, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lpub/devrel/easypermissions/helper/FrameworkFragmentPermissionHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/FrameworkFragmentPermissionHelper;-><init>(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;
    .locals 2
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 35
    new-instance v0, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/LowApiPermissionsHelper;-><init>(Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;

    invoke-direct {v0, p0}, Lpub/devrel/easypermissions/helper/SupportFragmentPermissionHelper;-><init>(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs abstract directRequestPermissions(I[Ljava/lang/String;)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public getHost()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    iget-object v0, p0, Lpub/devrel/easypermissions/helper/PermissionHelper;->mHost:Ljava/lang/Object;

    return-object v0
.end method

.method public permissionPermanentlyDenied(Ljava/lang/String;)Z
    .locals 1
    .param p1, "perms"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs requestPermissions(Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 1
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positiveButton"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "negativeButton"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-virtual {p0, p5}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRationale([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual/range {p0 .. p5}, Lpub/devrel/easypermissions/helper/PermissionHelper;->showRequestPermissionRationale(Ljava/lang/String;III[Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p4, p5}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs shouldShowRationale([Ljava/lang/String;)Z
    .locals 5
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    const/4 v1, 0x0

    .line 59
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 60
    .local v0, "perm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    const/4 v1, 0x1

    .line 64
    .end local v0    # "perm":Ljava/lang/String;
    :cond_0
    return v1

    .line 59
    .restart local v0    # "perm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract showRequestPermissionRationale(Ljava/lang/String;III[Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs somePermissionDenied([Ljava/lang/String;)Z
    .locals 1
    .param p1, "perms"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->shouldShowRationale([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public somePermissionPermanentlyDenied(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lpub/devrel/easypermissions/helper/PermissionHelper;, "Lpub/devrel/easypermissions/helper/PermissionHelper<TT;>;"
    .local p1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "deniedPermission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->permissionPermanentlyDenied(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 87
    .end local v0    # "deniedPermission":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
