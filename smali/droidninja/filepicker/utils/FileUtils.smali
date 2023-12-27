.class public Ldroidninja/filepicker/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ldroidninja/filepicker/utils/Utils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "fileExtension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->UNKNOWN:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 49
    :goto_0
    return-object v1

    .line 38
    :cond_0
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->isExcelFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->EXCEL:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->isDocFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->WORD:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->isPPTFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PPT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->isPDFFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PDF:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->isTxtFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->TXT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0

    .line 49
    :cond_5
    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->UNKNOWN:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    goto :goto_0
.end method

.method public static getTypeDrawable(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    move-result-object v0

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->EXCEL:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    if-ne v0, v1, :cond_0

    .line 19
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_excel:I

    .line 29
    :goto_0
    return v0

    .line 20
    :cond_0
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    move-result-object v0

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->WORD:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    if-ne v0, v1, :cond_1

    .line 21
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_word:I

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    move-result-object v0

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PPT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    if-ne v0, v1, :cond_2

    .line 23
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_ppt:I

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    move-result-object v0

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PDF:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    if-ne v0, v1, :cond_3

    .line 25
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_pdf:I

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {p0}, Ldroidninja/filepicker/utils/FileUtils;->getFileType(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    move-result-object v0

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->TXT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    if-ne v0, v1, :cond_4

    .line 27
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_txt:I

    goto :goto_0

    .line 29
    :cond_4
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_txt:I

    goto :goto_0
.end method

.method public static isDocFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "docx"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dot"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dotx"

    aput-object v2, v0, v1

    .line 61
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0, p0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isExcelFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xls"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "xlsx"

    aput-object v2, v0, v1

    .line 55
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0, p0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPDFFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdf"

    aput-object v2, v0, v1

    .line 73
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0, p0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPPTFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ppt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pptx"

    aput-object v2, v0, v1

    .line 67
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0, p0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isTxtFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "txt"

    aput-object v2, v0, v1

    .line 79
    .local v0, "types":[Ljava/lang/String;
    invoke-static {v0, p0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
