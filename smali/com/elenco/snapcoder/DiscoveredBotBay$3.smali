.class Lcom/elenco/snapcoder/DiscoveredBotBay$3;
.super Ljava/lang/Object;
.source "DiscoveredBotBay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/DiscoveredBotBay;->checkBots(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

.field final synthetic val$bots:Ljava/lang/String;

.field final synthetic val$newCount:I


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/DiscoveredBotBay;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/DiscoveredBotBay;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iput-object p2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->val$bots:Ljava/lang/String;

    iput p3, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->val$newCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->this$0:Lcom/elenco/snapcoder/DiscoveredBotBay;

    iget-object v1, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->val$bots:Ljava/lang/String;

    iget v2, p0, Lcom/elenco/snapcoder/DiscoveredBotBay$3;->val$newCount:I

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/DiscoveredBotBay;->checkBots(Ljava/lang/String;I)V

    .line 259
    return-void
.end method
