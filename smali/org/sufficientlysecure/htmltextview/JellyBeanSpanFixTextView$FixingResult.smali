.class Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
.super Ljava/lang/Object;
.source "JellyBeanSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixingResult"
.end annotation


# instance fields
.field public final fixed:Z

.field public final spansWithSpacesAfter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final spansWithSpacesBefore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "fixed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "spansWithSpacesBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p3, "spansWithSpacesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    .line 66
    iput-object p2, p0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    .line 68
    return-void
.end method

.method public static fixed(Ljava/util/List;Ljava/util/List;)Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "spansWithSpacesBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, "spansWithSpacesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static notFixed()Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;-><init>(ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method
