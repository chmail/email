.class public Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;
.super Ljava/lang/Object;
.source "HtmlTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;,
        Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;
    }
.end annotation


# static fields
.field public static final LIST_ITEM:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_LI_TAG"

.field public static final ORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_OL_TAG"

.field public static final UNORDERED_LIST:Ljava/lang/String; = "HTML_TEXTVIEW_ESCAPED_UL_TAG"

.field private static final bullet:Landroid/text/style/BulletSpan;

.field private static final indent:I = 0xa

.field private static final listItemIndent:I = 0x14


# instance fields
.field private clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

.field private drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

.field lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextPaint:Landroid/text/TextPaint;

.field olNextIndex:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tableHtmlBuilder:Ljava/lang/StringBuilder;

.field tableTagLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    .line 51
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->mTextPaint:Landroid/text/TextPaint;

    .line 52
    return-void
.end method

.method private varargs end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V
    .locals 9
    .param p1, "output"    # Landroid/text/Editable;
    .param p2, "kind"    # Ljava/lang/Class;
    .param p3, "paragraphStyle"    # Z
    .param p4, "replaces"    # [Ljava/lang/Object;

    .prologue
    .line 311
    invoke-static {p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 313
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 315
    .local v5, "where":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 318
    .local v1, "len":I
    iget v6, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-lez v6, :cond_0

    .line 319
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 320
    .local v0, "extractedSpanText":Ljava/lang/CharSequence;
    iget-object v6, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 323
    .end local v0    # "extractedSpanText":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 325
    if-eq v5, v1, :cond_2

    .line 326
    move v4, v1

    .line 328
    .local v4, "thisLen":I
    if-eqz p3, :cond_1

    .line 329
    const-string v6, "\n"

    invoke-interface {p1, v6}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 330
    add-int/lit8 v4, v4, 0x1

    .line 332
    :cond_1
    array-length v7, p4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, p4, v6

    .line 333
    .local v3, "replace":Ljava/lang/Object;
    const/16 v8, 0x21

    invoke-interface {p1, v3, v5, v4, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 332
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "replace":Ljava/lang/Object;
    .end local v4    # "thisLen":I
    :cond_2
    return-void
.end method

.method private extractSpanText(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "output"    # Landroid/text/Editable;
    .param p2, "kind"    # Ljava/lang/Class;

    .prologue
    .line 347
    invoke-static {p1, p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 349
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 351
    .local v3, "where":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 353
    .local v1, "len":I
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 354
    .local v0, "extractedSpanText":Ljava/lang/CharSequence;
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 355
    return-object v0
.end method

.method private static getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "kind"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 362
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p0, v3, v4, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 363
    .local v1, "objs":[Ljava/lang/Object;
    array-length v3, v1

    if-nez v3, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-object v2

    .line 366
    :cond_1
    array-length v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_0

    .line 367
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2

    .line 368
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    goto :goto_0

    .line 366
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "output"    # Landroid/text/Editable;
    .param p2, "mark"    # Ljava/lang/Object;

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 300
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-interface {p1, p2, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 305
    return-void
.end method

.method private storeTableTags(ZLjava/lang/String;)V
    .locals 2
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 284
    iget v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-gtz v0, :cond_0

    const-string v0, "table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    if-nez p1, :cond_1

    .line 287
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_2
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 15
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 146
    if-eqz p1, :cond_e

    .line 152
    const-string v9, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 153
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p2}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->storeTableTags(ZLjava/lang/String;)V

    .line 277
    return-void

    .line 154
    :cond_1
    const-string v9, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 155
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_2
    const-string v9, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 158
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    if-lez v9, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_3

    .line 159
    const-string v9, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 161
    :cond_3
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 162
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, "parentList":Ljava/lang/String;
    const-string v9, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 165
    iget-object v10, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 166
    :cond_4
    const-string v9, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 170
    .end local v7    # "parentList":Ljava/lang/String;
    :cond_5
    const-string v9, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 171
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    const-string v9, "center"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 173
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    const-string v9, "s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "strike"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 175
    :cond_8
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    :cond_9
    const-string v9, "table"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 177
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 178
    iget v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez v9, :cond_a

    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    .line 182
    const-string v9, "table placeholder"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 185
    :cond_a
    iget v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    goto/16 :goto_0

    .line 186
    :cond_b
    const-string v9, "tr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 187
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 188
    :cond_c
    const-string v9, "th"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 189
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    :cond_d
    const-string v9, "td"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 191
    new-instance v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;-><init>(Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$1;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    :cond_e
    const-string v9, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 200
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 201
    :cond_f
    const-string v9, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 202
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 203
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 204
    :cond_10
    const-string v9, "HTML_TEXTVIEW_ESCAPED_LI_TAG"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 205
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 206
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "HTML_TEXTVIEW_ESCAPED_UL_TAG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 207
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    if-lez v9, :cond_11

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_11

    .line 208
    const-string v9, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 211
    :cond_11
    const/16 v1, 0xa

    .line 212
    .local v1, "bulletMargin":I
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_12

    .line 213
    sget-object v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->bullet:Landroid/text/style/BulletSpan;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/style/BulletSpan;->getLeadingMargin(Z)I

    move-result v9

    rsub-int/lit8 v1, v9, 0xa

    .line 214
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_12

    .line 217
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    mul-int/lit8 v9, v9, 0x14

    sub-int/2addr v1, v9

    .line 220
    :cond_12
    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 221
    .local v4, "newBullet":Landroid/text/style/BulletSpan;
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ul;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/style/LeadingMarginSpan$Standard;

    iget-object v14, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    .line 222
    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    mul-int/lit8 v14, v14, 0x14

    invoke-direct {v13, v14}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    .line 221
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    .end local v1    # "bulletMargin":I
    .end local v4    # "newBullet":Landroid/text/style/BulletSpan;
    :cond_13
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "HTML_TEXTVIEW_ESCAPED_OL_TAG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 225
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    if-lez v9, :cond_14

    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_14

    .line 226
    const-string v9, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 228
    :cond_14
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v5, v9, 0x14

    .line 229
    .local v5, "numberMargin":I
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_15

    .line 231
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    mul-int/lit8 v9, v9, 0x14

    sub-int/2addr v5, v9

    .line 233
    :cond_15
    new-instance v6, Lorg/sufficientlysecure/htmltextview/NumberSpan;

    iget-object v10, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->olNextIndex:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v6, v10, v9}, Lorg/sufficientlysecure/htmltextview/NumberSpan;-><init>(Landroid/text/TextPaint;I)V

    .line 234
    .local v6, "numberSpan":Lorg/sufficientlysecure/htmltextview/NumberSpan;
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Ol;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v13, v5}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    .end local v5    # "numberMargin":I
    .end local v6    # "numberSpan":Lorg/sufficientlysecure/htmltextview/NumberSpan;
    :cond_16
    const-string v9, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 240
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Code;

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/style/TypefaceSpan;

    const-string v14, "monospace"

    invoke-direct {v13, v14}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v13, v11, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 241
    :cond_17
    const-string v9, "center"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 242
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Center;

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v13, v14}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v13, v11, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_18
    const-string v9, "s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "strike"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 244
    :cond_19
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Strike;

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v13, v11, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    :cond_1a
    const-string v9, "table"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 246
    iget v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    .line 249
    iget v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableTagLevel:I

    if-nez v9, :cond_1d

    .line 250
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->tableHtmlBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, "tableHtml":Ljava/lang/String;
    const/4 v2, 0x0

    .line 253
    .local v2, "myClickableTableSpan":Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    if-eqz v9, :cond_1b

    .line 254
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    invoke-virtual {v9}, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->newInstance()Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v8}, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->setTableHtml(Ljava/lang/String;)V

    .line 258
    :cond_1b
    const/4 v3, 0x0

    .line 259
    .local v3, "myDrawTableLinkSpan":Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    if-eqz v9, :cond_1c

    .line 260
    iget-object v9, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    invoke-virtual {v9}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->newInstance()Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    move-result-object v3

    .line 263
    :cond_1c
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 265
    .end local v2    # "myClickableTableSpan":Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
    .end local v3    # "myDrawTableLinkSpan":Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    .end local v8    # "tableHtml":Ljava/lang/String;
    :cond_1d
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Table;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 267
    :cond_1e
    const-string v9, "tr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 268
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Tr;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 269
    :cond_1f
    const-string v9, "th"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 270
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Th;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 271
    :cond_20
    const-string v9, "td"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 272
    const-class v9, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler$Td;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->end(Landroid/text/Editable;Ljava/lang/Class;Z[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method overrideTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "html"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "<ul"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_UL_TAG"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    const-string v0, "</ul>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_UL_TAG>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "<ol"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_OL_TAG"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string v0, "</ol>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_OL_TAG>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string v0, "<li"

    const-string v1, "<HTML_TEXTVIEW_ESCAPED_LI_TAG"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v0, "</li>"

    const-string v1, "</HTML_TEXTVIEW_ESCAPED_LI_TAG>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 76
    goto :goto_0
.end method

.method public setClickableTableSpan(Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;)V
    .locals 0
    .param p1, "clickableTableSpan"    # Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->clickableTableSpan:Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;

    .line 377
    return-void
.end method

.method public setDrawTableLinkSpan(Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;)V
    .locals 0
    .param p1, "drawTableLinkSpan"    # Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/HtmlTagHandler;->drawTableLinkSpan:Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    .line 381
    return-void
.end method
