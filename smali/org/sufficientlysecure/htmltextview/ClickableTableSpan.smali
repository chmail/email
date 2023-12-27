.class public abstract Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableTableSpan.java"


# instance fields
.field protected tableHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public getTableHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->tableHtml:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newInstance()Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;
.end method

.method public setTableHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableHtml"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/ClickableTableSpan;->tableHtml:Ljava/lang/String;

    .line 35
    return-void
.end method
