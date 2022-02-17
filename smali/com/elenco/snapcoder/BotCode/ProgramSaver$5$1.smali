.class Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;
.super Ljava/lang/Object;
.source "ProgramSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$programSaver:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    iget-object v1, v1, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$programSaver:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 197
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5$1;->this$1:Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;

    iget-object v0, v0, Lcom/elenco/snapcoder/BotCode/ProgramSaver$5;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 199
    :cond_0
    return-void
.end method
