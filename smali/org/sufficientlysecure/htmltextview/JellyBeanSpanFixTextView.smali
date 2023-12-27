.class public Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;
.super Landroid/widget/TextView;
.source "JellyBeanSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method private addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .locals 9
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-virtual {p1, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 134
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v5, "spansWithSpacesBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v4, "spansWithSpacesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v3, v6

    .line 138
    .local v0, "span":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 139
    .local v2, "spanStart":I
    add-int/lit8 v8, v2, -0x1

    invoke-direct {p0, p1, v8}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    const-string v8, " "

    invoke-virtual {p1, v2, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 145
    .local v1, "spanEnd":I
    invoke-direct {p0, p1, v1}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    const-string v8, " "

    invoke-virtual {p1, v1, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 152
    invoke-static {v5, v4}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->fixed(Ljava/util/List;Ljava/util/List;)Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 159
    .end local v0    # "span":Ljava/lang/Object;
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :goto_1
    return-object v6

    .line 153
    .restart local v0    # "span":Ljava/lang/Object;
    .restart local v1    # "spanEnd":I
    .restart local v2    # "spanStart":I
    :catch_0
    move-exception v8

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "span":Ljava/lang/Object;
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :cond_2
    invoke-static {}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->notFixed()Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    move-result-object v6

    goto :goto_1
.end method

.method private fallbackToString(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "fallbackText":Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 212
    return-void
.end method

.method private fixOnMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 98
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V

    .line 106
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->fallbackToString(II)V

    goto :goto_0
.end method

.method private fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    .local v2, "startFix":J
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;

    move-result-object v0

    .line 118
    .local v0, "result":Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    iget-boolean v1, v0, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-direct {p0, p2, p3, p1, v0}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;)V

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->fallbackToString(II)V

    goto :goto_0
.end method

.method private isNotSpace(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I

    .prologue
    .line 163
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "result"    # Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v6, p4, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "span":Ljava/lang/Object;
    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 178
    .local v4, "spanEnd":I
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p3, v4, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 180
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ignored":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, " "

    invoke-virtual {p3, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 186
    .end local v0    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanEnd":I
    :cond_0
    const/4 v1, 0x1

    .line 187
    .local v1, "needReset":Z
    iget-object v6, p4, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 188
    .restart local v3    # "span":Ljava/lang/Object;
    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 189
    .local v5, "spanStart":I
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p3, v7, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 191
    :try_start_1
    invoke-direct {p0, p3, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    const/4 v1, 0x0

    goto :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .restart local v0    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x1

    .line 195
    add-int/lit8 v2, v5, -0x1

    .line 196
    .local v2, "newSpanStart":I
    const-string v7, " "

    invoke-virtual {p3, v2, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 200
    .end local v0    # "ignored":Ljava/lang/IndexOutOfBoundsException;
    .end local v2    # "newSpanStart":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v5    # "spanStart":I
    :cond_1
    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {p0, p3}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 204
    :cond_2
    return-void
.end method

.method private setTextAndMeasure(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-super {p0, p2, p3}, Landroid/widget/TextView;->onMeasure(II)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/JellyBeanSpanFixTextView;->fixOnMeasure(II)V

    goto :goto_0
.end method
