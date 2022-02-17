.class Lcom/elenco/snapcoder/DiscoveredBotBay$2;
.super Ljava/lang/Object;
.source "DiscoveredBotBay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/DiscoveredBotBay;->insertConnectingBot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

.field final synthetic val$newBot:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/DiscoveredBotBay;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$2;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iput-object p2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$2;->val$newBot:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$2;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iget-object v1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$2;->val$newBot:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/DiscoveredBotBay;->checkBots(Ljava/lang/String;I)V

    .line 245
    return-void
.end method
