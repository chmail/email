.class Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "HtmlHttpImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageGetterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private compressImage:Z

.field private final containerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final drawableReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final imageGetterReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;",
            ">;"
        }
    .end annotation
.end field

.field private matchParentWidth:Z

.field private qualityImage:I

.field private final resources:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;Landroid/view/View;ZZI)V
    .locals 2
    .param p1, "d"    # Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;
    .param p2, "imageGetter"    # Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
    .param p3, "container"    # Landroid/view/View;
    .param p4, "matchParentWidth"    # Z
    .param p5, "compressImage"    # Z
    .param p6, "qualityImage"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    .line 107
    const/16 v0, 0x32

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->drawableReference:Ljava/lang/ref/WeakReference;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    .line 115
    iput-boolean p4, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->matchParentWidth:Z

    .line 116
    iput-boolean p5, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    .line 117
    iput p6, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    .line 118
    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v2, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;

    .line 229
    .local v0, "imageGetter":Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
    if-nez v0, :cond_0

    .line 230
    const/4 v2, 0x0

    .line 238
    :goto_0
    return-object v2

    .line 232
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    invoke-virtual {v2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 238
    .local v1, "url":Ljava/net/URL;
    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    goto :goto_0

    .line 235
    .end local v1    # "url":Ljava/net/URL;
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .restart local v1    # "url":Ljava/net/URL;
    goto :goto_1
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    iget-object v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 204
    .local v0, "container":Landroid/view/View;
    if-nez v0, :cond_0

    .line 205
    const/high16 v3, 0x3f800000    # 1.0f

    .line 211
    :goto_0
    return v3

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 209
    .local v1, "maxWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 211
    .local v2, "originalDrawableWidth":F
    div-float v3, v1, v2

    goto :goto_0
.end method

.method private getScale(Landroid/graphics/drawable/Drawable;)F
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 215
    iget-object v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 216
    .local v0, "container":Landroid/view/View;
    iget-boolean v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->matchParentWidth:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 223
    :goto_0
    return v3

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 221
    .local v1, "maxWidth":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v2, v3

    .line 223
    .local v2, "originalDrawableWidth":F
    div-float v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetchCompressedDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public fetchCompressedDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0, p2}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    .local v3, "is":Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 184
    .local v4, "original":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 186
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 189
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    .local v1, "decoded":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 192
    invoke-direct {p0, v1}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->getScale(Landroid/graphics/Bitmap;)F

    move-result v6

    iput v6, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    .line 193
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 195
    .local v0, "b":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "b":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "decoded":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "original":Landroid/graphics/Bitmap;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    invoke-direct {p0, p2}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 167
    .local v2, "is":Ljava/io/InputStream;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 168
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->getScale(Landroid/graphics/drawable/Drawable;)F

    move-result v3

    iput v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    .line 169
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 138
    const-string v2, "HtmlTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable result is null! (source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->drawableReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;

    .line 142
    .local v1, "urlDrawable":Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;->setBounds(IIII)V

    .line 149
    iput-object p1, v1, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v2, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;

    .line 152
    .local v0, "imageGetter":Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
    if-eqz v0, :cond_0

    .line 156
    iget-object v2, v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 158
    iget-object v2, v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    iget-object v3, v0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
