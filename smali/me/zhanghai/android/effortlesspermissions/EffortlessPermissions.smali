.class public Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;
.super Ljava/lang/Object;
.source "EffortlessPermissions.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->runAfterPermissionDenied(Ljava/lang/Object;ILjava/util/List;)V

    return-void
.end method

.method public static varargs hasPermissions(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    :goto_0
    invoke-static {v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 43
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs hasPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsingAndroidAnnotations(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    :goto_0
    return v2

    .line 266
    :cond_0
    :try_start_0
    const-string v3, "org.androidannotations.api.view.HasViews"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 268
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method public static varargs onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "receivers"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 131
    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 132
    .local v0, "allReceivers":[Ljava/lang/Object;
    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions$1;

    invoke-direct {v2, p3}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions$1;-><init>([Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 149
    invoke-static {p0, p1, p2, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public static permissionPermanentlyDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deniedPermission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->permissionPermanentlyDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static permissionPermanentlyDenied(Landroid/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deniedPermission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->permissionPermanentlyDenied(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static permissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deniedPermission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->permissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;IIII[Ljava/lang/String;)V
    .locals 6
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;II[Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;IIII[Ljava/lang/String;)V
    .locals 6
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;II[Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-static/range {p0 .. p5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;IIII[Ljava/lang/String;)V
    .locals 6
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;II[Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .param p5, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-static/range {p0 .. p5}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;III[Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static varargs requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rationale"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/support/v4/app/Fragment;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static runAfterPermissionDenied(Ljava/lang/Object;ILjava/util/List;)V
    .locals 12
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 221
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {p0}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->isUsingAndroidAnnotations(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 224
    :cond_0
    :goto_0
    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_6

    aget-object v3, v7, v5

    .line 226
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v9, Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 227
    const-class v9, Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;

    .line 229
    .local v0, "annotation":Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;
    invoke-interface {v0}, Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;->value()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 230
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 231
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v4

    if-eqz v9, :cond_2

    array-length v9, v4

    if-ne v9, v11, :cond_1

    aget-object v9, v4, v6

    const-class v10, Ljava/util/List;

    .line 232
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 233
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot execute method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because its parameter list is not empty or containing only a List<String>."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_3

    .line 239
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 241
    :cond_3
    array-length v9, v4

    if-nez v9, :cond_5

    .line 242
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v0    # "annotation":Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 244
    .restart local v0    # "annotation":Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;
    .restart local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v3, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->TAG:Ljava/lang/String;

    const-string v10, "Running AfterPermissionDenied failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 248
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->TAG:Ljava/lang/String;

    const-string v10, "Running AfterPermissionDenied failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 254
    .end local v0    # "annotation":Lme/zhanghai/android/effortlesspermissions/AfterPermissionDenied;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_0

    .line 256
    :cond_7
    return-void
.end method

.method public static varargs somePermissionDenied(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionDenied(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionDenied(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionDenied(Landroid/app/Fragment;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionDenied(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionDenied(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionPermanentlyDenied(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lme/zhanghai/android/effortlesspermissions/EffortlessPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/app/Fragment;Ljava/util/List;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Fragment;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionPermanentlyDenied(Landroid/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Fragment;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/support/v4/app/Fragment;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
