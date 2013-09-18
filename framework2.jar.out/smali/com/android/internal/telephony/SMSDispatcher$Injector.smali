.class Lcom/android/internal/telephony/SMSDispatcher$Injector;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSmsCmd(Lcom/android/internal/telephony/SMSDispatcher;[[B)Z
    .locals 8
    .parameter "dispatcher"
    .parameter "pdus"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 78
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 82
    :try_start_0
    aget-object v6, p1, v3

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v6, "SMS"

    const-string v7, "NPE in checkSmsCmd: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lmiui/provider/MiCloudSmsCmd;->checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 91
    :goto_2
    return v4

    :cond_1
    move v4, v5

    goto :goto_2
.end method

.method static enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "dispatcher"
    .parameter "tracker"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added message to the pending queue. Queue size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static enqueueOrSendSms(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "dispatcher"
    .parameter "tracker"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method static initSynchronousSending(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 3
    .parameter "dispatcher"

    .prologue
    .line 99
    const-string/jumbo v0, "persist.radio.sms_sync_sending"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    .line 103
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSDispatcher: mSyncronousSending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method static processNextPendingMessage(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 4
    .parameter "dispatcher"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed message from pending queue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 142
    :cond_0
    monitor-exit v1

    .line 143
    return-void

    .line 135
    :cond_1
    const-string v0, "SMS"

    const-string v2, "Pending messages list consistency failure detected!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static processNextPendingMessageIfSynchronous(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "dispatcher"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher$Injector;->processNextPendingMessage(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 113
    :cond_0
    return-void
.end method
