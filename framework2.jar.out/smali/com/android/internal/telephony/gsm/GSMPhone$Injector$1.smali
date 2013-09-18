.class final Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;
.super Ljava/lang/Object;
.source "GSMPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GSMPhone$Injector;->checkAndNotifyDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/CommandsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cm:Lcom/android/internal/telephony/CommandsInterface;

.field final synthetic val$phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;->val$cm:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;->val$phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;->val$cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Injector$1;->val$phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 130
    return-void
.end method
