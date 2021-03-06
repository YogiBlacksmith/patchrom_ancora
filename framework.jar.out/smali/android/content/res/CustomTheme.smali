.class public final Landroid/content/res/CustomTheme;
.super Ljava/lang/Object;
.source "CustomTheme.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final sBootTheme:Landroid/content/res/CustomTheme;

.field private static final sSystemTheme:Landroid/content/res/CustomTheme;


# instance fields
.field private final mThemeId:Ljava/lang/String;

.field private final mThemePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/res/CustomTheme;

    invoke-direct {v0}, Landroid/content/res/CustomTheme;-><init>()V

    sput-object v0, Landroid/content/res/CustomTheme;->sBootTheme:Landroid/content/res/CustomTheme;

    new-instance v0, Landroid/content/res/CustomTheme;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/res/CustomTheme;->sSystemTheme:Landroid/content/res/CustomTheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.sys.themeId"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.themePackageName"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "themeId"
    .parameter "packageName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    return-void
.end method

.method public static getBootTheme()Landroid/content/res/CustomTheme;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/CustomTheme;->sBootTheme:Landroid/content/res/CustomTheme;

    return-object v0
.end method

.method public static getSystemTheme()Landroid/content/res/CustomTheme;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/CustomTheme;->sSystemTheme:Landroid/content/res/CustomTheme;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Landroid/content/res/CustomTheme;

    if-eqz v7, :cond_8

    move-object v4, p1

    check-cast v4, Landroid/content/res/CustomTheme;

    .local v4, o:Landroid/content/res/CustomTheme;
    iget-object v7, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v0, ""

    .local v0, currentPackageName:Ljava/lang/String;
    :goto_1
    iget-object v7, v4, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    if-nez v7, :cond_5

    const-string v2, ""

    .local v2, newPackageName:Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    if-nez v7, :cond_6

    const-string v1, ""

    .local v1, currentThemeId:Ljava/lang/String;
    :goto_3
    iget-object v7, v4, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    if-nez v7, :cond_7

    const-string v3, ""

    .local v3, newThemeId:Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0

    .end local v0           #currentPackageName:Ljava/lang/String;
    .end local v1           #currentThemeId:Ljava/lang/String;
    .end local v2           #newPackageName:Ljava/lang/String;
    .end local v3           #newThemeId:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    goto :goto_1

    .restart local v0       #currentPackageName:Ljava/lang/String;
    :cond_5
    iget-object v2, v4, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    goto :goto_2

    .restart local v2       #newPackageName:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    goto :goto_3

    .restart local v1       #currentThemeId:Ljava/lang/String;
    :cond_7
    iget-object v3, v4, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    goto :goto_4

    .end local v0           #currentPackageName:Ljava/lang/String;
    .end local v1           #currentThemeId:Ljava/lang/String;
    .end local v2           #newPackageName:Ljava/lang/String;
    .end local v4           #o:Landroid/content/res/CustomTheme;
    :cond_8
    move v5, v6

    goto :goto_0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    return-object v0
.end method

.method public getThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
