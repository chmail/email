.class public Ldroidninja/filepicker/models/PhotoDirectory;
.super Ldroidninja/filepicker/models/BaseFile;
.source "PhotoDirectory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:Ljava/lang/String;

.field private coverPath:Ljava/lang/String;

.field private dateAdded:J

.field private medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Media;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ldroidninja/filepicker/models/PhotoDirectory$1;

    invoke-direct {v0}, Ldroidninja/filepicker/models/PhotoDirectory$1;-><init>()V

    sput-object v0, Ldroidninja/filepicker/models/PhotoDirectory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ldroidninja/filepicker/models/BaseFile;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Ldroidninja/filepicker/models/BaseFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Ldroidninja/filepicker/models/BaseFile;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->coverPath:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->dateAdded:J

    .line 32
    return-void
.end method


# virtual methods
.method public addPhoto(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mediaType"    # I

    .prologue
    .line 133
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    new-instance v1, Ldroidninja/filepicker/models/Media;

    invoke-direct {v1, p1, p2, p3, p4}, Ldroidninja/filepicker/models/Media;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public addPhoto(Ldroidninja/filepicker/models/Media;)V
    .locals 1
    .param p1, "media"    # Ldroidninja/filepicker/models/Media;

    .prologue
    .line 137
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public addPhotos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "photosList":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Media;>;"
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    move v4, v3

    .line 64
    :cond_0
    :goto_0
    return v4

    .line 49
    :cond_1
    instance-of v5, p1, Ldroidninja/filepicker/models/PhotoDirectory;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Ldroidninja/filepicker/models/PhotoDirectory;

    .line 53
    .local v0, "directory":Ldroidninja/filepicker/models/PhotoDirectory;
    iget-object v5, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 54
    .local v1, "hasId":Z
    :goto_1
    iget-object v5, v0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 56
    .local v2, "otherHasId":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 57
    iget-object v3, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    iget-object v5, v0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    iget-object v4, v0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_0

    .end local v1    # "hasId":Z
    .end local v2    # "otherHasId":Z
    :cond_2
    move v1, v4

    .line 53
    goto :goto_1

    .restart local v1    # "hasId":Z
    :cond_3
    move v2, v4

    .line 54
    goto :goto_2
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    const-string v1, "ALL_PHOTOS_BUCKET_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/Media;

    invoke-virtual {v0}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->coverPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->coverPath:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->dateAdded:J

    return-wide v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPaths()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/models/Media;

    .line 127
    .local v0, "media":Ldroidninja/filepicker/models/Media;
    invoke-virtual {v0}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "media":Ldroidninja/filepicker/models/Media;
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    iget-object v1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 79
    .local v0, "result":I
    iget-object v1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 84
    goto :goto_0
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverPath"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->coverPath:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDateAdded(J)V
    .locals 1
    .param p1, "dateAdded"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->dateAdded:J

    .line 114
    return-void
.end method

.method public setMedias(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "medias":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Media;>;"
    iput-object p1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->medias:Ljava/util/List;

    .line 122
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 161
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->bucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-wide v0, p0, Ldroidninja/filepicker/models/PhotoDirectory;->dateAdded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    return-void
.end method
