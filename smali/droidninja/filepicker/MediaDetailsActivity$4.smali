.class Ldroidninja/filepicker/MediaDetailsActivity$4;
.super Ljava/lang/Object;
.source "MediaDetailsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/MediaDetailsActivity;->updateList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldroidninja/filepicker/models/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/MediaDetailsActivity;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/MediaDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/MediaDetailsActivity;

    .prologue
    .line 149
    iput-object p1, p0, Ldroidninja/filepicker/MediaDetailsActivity$4;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ldroidninja/filepicker/models/Media;Ldroidninja/filepicker/models/Media;)I
    .locals 2
    .param p1, "a"    # Ldroidninja/filepicker/models/Media;
    .param p2, "b"    # Ldroidninja/filepicker/models/Media;

    .prologue
    .line 152
    invoke-virtual {p2}, Ldroidninja/filepicker/models/Media;->getId()I

    move-result v0

    invoke-virtual {p1}, Ldroidninja/filepicker/models/Media;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 149
    check-cast p1, Ldroidninja/filepicker/models/Media;

    check-cast p2, Ldroidninja/filepicker/models/Media;

    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/MediaDetailsActivity$4;->compare(Ldroidninja/filepicker/models/Media;Ldroidninja/filepicker/models/Media;)I

    move-result v0

    return v0
.end method
