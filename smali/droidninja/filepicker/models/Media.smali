.class public Ldroidninja/filepicker/models/Media;
.super Ldroidninja/filepicker/models/BaseFile;
.source "Media.java"


# instance fields
.field public mediaType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ldroidninja/filepicker/models/BaseFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mediaType"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Ldroidninja/filepicker/models/BaseFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput p4, p0, Ldroidninja/filepicker/models/Media;->mediaType:I

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    if-ne p0, p1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    instance-of v3, p1, Ldroidninja/filepicker/models/Media;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 21
    check-cast v0, Ldroidninja/filepicker/models/Media;

    .line 23
    .local v0, "media":Ldroidninja/filepicker/models/Media;
    iget v3, p0, Ldroidninja/filepicker/models/Media;->id:I

    iget v4, v0, Ldroidninja/filepicker/models/Media;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Ldroidninja/filepicker/models/Media;->id:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ldroidninja/filepicker/models/Media;->mediaType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ldroidninja/filepicker/models/Media;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ldroidninja/filepicker/models/Media;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/models/Media;->path:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Ldroidninja/filepicker/models/Media;->id:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 44
    iput p1, p0, Ldroidninja/filepicker/models/Media;->id:I

    .line 45
    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .param p1, "mediaType"    # I

    .prologue
    .line 60
    iput p1, p0, Ldroidninja/filepicker/models/Media;->mediaType:I

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Ldroidninja/filepicker/models/Media;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Ldroidninja/filepicker/models/Media;->path:Ljava/lang/String;

    .line 37
    return-void
.end method
