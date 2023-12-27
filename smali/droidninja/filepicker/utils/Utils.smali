.class public Ldroidninja/filepicker/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEIGHT_INDEX:I = 0x1

.field private static final WIDTH_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "types"    # [Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 49
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 51
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return v1

    .line 48
    .restart local v0    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static filter(Ljava/util/Collection;Lcom/android/internal/util/Predicate;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/android/internal/util/Predicate",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v1
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 59
    .local v3, "widthHeight":[I
    aput v6, v3, v6

    .line 60
    aput v6, v3, v7

    .line 62
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 63
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 65
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 66
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 67
    iget v5, v2, Landroid/graphics/Point;->x:I

    aput v5, v3, v6

    .line 68
    iget v5, v2, Landroid/graphics/Point;->y:I

    aput v5, v3, v7

    .line 70
    invoke-static {v3}, Ldroidninja/filepicker/utils/Utils;->isScreenSizeRetrieved([I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 72
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v5, v3, v6

    .line 74
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v5, v3, v7

    .line 78
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    invoke-static {v3}, Ldroidninja/filepicker/utils/Utils;->isScreenSizeRetrieved([I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    aput v5, v3, v6

    .line 80
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    aput v5, v3, v7

    .line 83
    :cond_1
    return-object v3
.end method

.method private static isScreenSizeRetrieved([I)Z
    .locals 3
    .param p0, "widthHeight"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    aget v2, p0, v1

    if-eqz v2, :cond_0

    aget v2, p0, v0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
