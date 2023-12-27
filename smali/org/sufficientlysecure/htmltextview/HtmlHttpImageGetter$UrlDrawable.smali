.class public Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HtmlHttpImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlDrawable"
.end annotation


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;->this$0:Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    :cond_0
    return-void
.end method
