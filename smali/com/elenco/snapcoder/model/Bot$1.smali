.class Lcom/elenco/snapcoder/model/Bot$1;
.super Ljava/util/TimerTask;
.source "Bot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/model/Bot;->executeDriveCommand(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/model/Bot;

.field final synthetic val$keepOn2:Ljava/lang/String;

.field final synthetic val$shouldRemove2:Z


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/model/Bot;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/elenco/snapcoder/model/Bot$1;->this$0:Lcom/elenco/snapcoder/model/Bot;

    iput-object p2, p0, Lcom/elenco/snapcoder/model/Bot$1;->val$keepOn2:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/elenco/snapcoder/model/Bot$1;->val$shouldRemove2:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/elenco/snapcoder/model/Bot$1;->this$0:Lcom/elenco/snapcoder/model/Bot;

    iget-object v1, p0, Lcom/elenco/snapcoder/model/Bot$1;->val$keepOn2:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/elenco/snapcoder/model/Bot$1;->val$shouldRemove2:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/elenco/snapcoder/model/Bot;->stopMotorCircuit(Ljava/lang/String;ZZ)V

    .line 589
    return-void
.end method
