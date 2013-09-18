.class Lcom/android/internal/telephony/gsm/GSMPhone$Injector;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field private static MAX_RETRY_IMEI_COUNT:I

.field private static RETRY_IMEI_INTERVAL:I

.field private static sRetryImeiCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x32

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->MAX_RETRY_IMEI_COUNT:I

    .line 99
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->RETRY_IMEI_INTERVAL:I

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "imei"
    .parameter "phone"
    .parameter "cm"

    .prologue
    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    sget v3, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->MAX_RETRY_IMEI_COUNT:I

    if-ge v2, v3, :cond_1

    .line 119
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    .line 120
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    int-to-long v2, v2

    sget v4, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sget v4, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->sRetryImeiCount:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sget v4, Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->RETRY_IMEI_INTERVAL:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 122
    .local v0, delayTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 123
    const-wide v0, 0x7fffffffffffffffL

    .line 126
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;

    invoke-direct {v2, p2, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/GSMPhone;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v0           #delayTime:J
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->sendDeviceIdReadyBroadcast()V
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 135
    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdSystemProperty()V
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    goto :goto_0
.end method

.method static checkEmptyImei(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phone"
    .parameter "imei"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 107
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 108
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    .line 112
    .end local v1           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-object p1
.end method
