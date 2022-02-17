.class Lcom/elenco/snapcoder/BatteryChecker$1;
.super Ljava/lang/Object;
.source "BatteryChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BatteryChecker;->insertBatteryDrop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BatteryChecker;

.field final synthetic val$newDrop:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BatteryChecker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BatteryChecker;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/elenco/snapcoder/BatteryChecker$1;->this$0:Lcom/elenco/snapcoder/BatteryChecker;

    iput-object p2, p0, Lcom/elenco/snapcoder/BatteryChecker$1;->val$newDrop:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/elenco/snapcoder/BatteryChecker$1;->this$0:Lcom/elenco/snapcoder/BatteryChecker;

    iget-object v0, v0, Lcom/elenco/snapcoder/BatteryChecker;->battList:Ljava/util/List;

    iget-object v1, p0, Lcom/elenco/snapcoder/BatteryChecker$1;->val$newDrop:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
