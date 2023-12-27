.class Ldroidninja/filepicker/fragments/DocPickerFragment$2;
.super Ljava/lang/Object;
.source "DocPickerFragment.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/DocPickerFragment;->filterDocuments([Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ldroidninja/filepicker/models/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

.field final synthetic val$type:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/DocPickerFragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/DocPickerFragment;

    .prologue
    .line 149
    iput-object p1, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$2;->this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

    iput-object p2, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$2;->val$type:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ldroidninja/filepicker/models/Document;)Z
    .locals 1
    .param p1, "document"    # Ldroidninja/filepicker/models/Document;

    .prologue
    .line 151
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$2;->val$type:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldroidninja/filepicker/models/Document;->isThisType([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 149
    check-cast p1, Ldroidninja/filepicker/models/Document;

    invoke-virtual {p0, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment$2;->apply(Ldroidninja/filepicker/models/Document;)Z

    move-result v0

    return v0
.end method
