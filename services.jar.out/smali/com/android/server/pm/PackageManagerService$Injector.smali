.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAvailableFeatures(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, features:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const-string v0, "android.hardware.telephony"

    .line 277
    .local v0, HARDWARE_TELEPHONY:Ljava/lang/String;
    const-string v1, "android.hardware.telephony.cdma"

    .line 278
    .local v1, HARDWARE_TELEPHONY_CDMA:Ljava/lang/String;
    sget-boolean v3, Lmiui/os/Build;->IS_XIAOMI_CDMA:Z

    if-eqz v3, :cond_1

    .line 279
    const-string v3, "android.hardware.telephony"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 281
    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v3, "android.hardware.telephony"

    iput-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 282
    const-string v3, "android.hardware.telephony.cdma"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 286
    .restart local v2       #fi:Landroid/content/pm/FeatureInfo;
    const-string v3, "android.hardware.telephony.cdma"

    iput-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 287
    const-string v3, "android.hardware.telephony.cdma"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :cond_1
    return-void
.end method

.method static addMiuiExtendFlags(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .parameter "pkg"
    .parameter "pkgSetting"

    .prologue
    .line 197
    const/high16 v0, -0x3800

    .line 200
    .local v0, miuiExtendFlags:I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 201
    return-void
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/pm/MiuiSharedUids;->add(Lcom/android/server/pm/Settings;Z)V

    .line 190
    return-void
.end method

.method static addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 2
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 240
    const/high16 v0, 0x2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 242
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 252
    :cond_0
    :goto_0
    const/high16 v0, 0x4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 255
    :cond_2
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 256
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 262
    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v0

    :goto_2
    return v0

    .line 244
    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 258
    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 262
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z
    .locals 5
    .parameter "service"
    .parameter "msg"

    .prologue
    .line 165
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 166
    .local v1, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    instance-of v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 167
    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 168
    .local v0, insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v2, :cond_0

    .line 171
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    const/4 v3, 0x0

    const/16 v4, -0x16

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 178
    .end local v0           #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 172
    .restart local v0       #insallParams:Lcom/android/server/pm/PackageManagerService$InstallParams;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static checkMiuiHomeIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "pms"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter "userId"
    .parameter "defaultResolveInfo"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "com.miui.home"

    const-string v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p5

    .line 272
    .end local p5
    :cond_0
    return-object p5
.end method

.method static doHandleMessage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Landroid/os/Message;)V
    .locals 2
    .parameter "service"
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 182
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerService$Injector;->checkApk(Lcom/android/server/pm/PackageManagerService;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method static ignoreMiuiFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
    .locals 2
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/framework-miui-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method static setMiuiExtendFlags(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 8
    .parameter "service"
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x800

    const/high16 v5, -0x8000

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 214
    .local v0, packages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 215
    .local v3, settings:Lcom/android/server/pm/Settings;
    monitor-enter v0

    .line 216
    if-eq p2, v5, :cond_0

    if-eq p2, v7, :cond_0

    if-eq p2, v6, :cond_0

    .line 218
    const/4 v4, 0x0

    :try_start_0
    monitor-exit v0

    .line 231
    :goto_0
    return v4

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 220
    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 221
    .local v2, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 222
    if-ne p2, v5, :cond_3

    .line 223
    const/high16 v4, -0x8000

    invoke-static {v2, v1, v4, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    .line 229
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 231
    :cond_2
    const/4 v4, 0x1

    monitor-exit v0

    goto :goto_0

    .line 232
    .end local v1           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v2           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 224
    .restart local v1       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v2       #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_3
    if-ne p2, v7, :cond_4

    .line 225
    const/high16 v4, 0x4000

    :try_start_1
    invoke-static {v2, v1, v4, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V

    goto :goto_1

    .line 226
    :cond_4
    if-ne p2, v6, :cond_1

    .line 227
    const/high16 v4, 0x800

    invoke-static {v2, v1, v4, p3}, Lcom/android/server/pm/PackageManagerService$Injector;->updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static updateApplicationFlags(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;II)V
    .locals 3
    .parameter "pkgSetting"
    .parameter "pkg"
    .parameter "updateFlags"
    .parameter "flags"

    .prologue
    .line 204
    if-ne p3, p2, :cond_0

    .line 205
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 206
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 209
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method
