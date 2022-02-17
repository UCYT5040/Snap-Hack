.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$7$1;
.super Ljava/lang/Object;
.source "FlyOutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$7;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenu;

    const-string v1, "BotCode"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenu;->closeAll(Ljava/lang/String;)V

    .line 121
    return-void
.end method
