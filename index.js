const Koa = require("koa")
const Router = require("koa-router")
const app = new Koa()
const router = new Router()
const config = require("./config")

// return 200
router.get("/", async (ctx) => {
  ctx.body = `Hello. I'm ${config.env}.`
  ctx.status = 200
})

app.use(router.routes())

app.listen(config.port, () => {
  console.log(`🚀 server listen at http://localhost:${config.port}\n`)
})
