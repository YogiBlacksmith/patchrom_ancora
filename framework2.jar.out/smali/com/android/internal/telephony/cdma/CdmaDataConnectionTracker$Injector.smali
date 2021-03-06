.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$Injector;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onDataSetupComplete(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, current:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getActiveApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 74
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataConnectionAsyncChannels()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 75
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    move-object v1, v2

    .line 81
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lmiui/net/FirewallManager;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    return-void
.end method

.method static onDisconnectDone(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 89
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getActiveApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    invoke-static {v2}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/net/FirewallManager;->onDataDisconnected(ILjava/lang/String;)V

    .line 91
    return-void
.end method
