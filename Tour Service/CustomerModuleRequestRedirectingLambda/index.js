const { PubSub } = require("@google-cloud/pubsub");
require("dotenv").config();
const projectId = "sonic-anagram-341118";
const pubSubClient = new PubSub({ projectId });

async function publishMessage(msg) {
    console.log(msg);
    const dataBuffer = Buffer.from(msg);

    try {
        const messageId = await pubSubClient
            .topic("triggerRecommendation")
            .publishMessage({ data: dataBuffer });
        console.log(`Message ${messageId} published.`);
        return `Message ${messageId} published.`;
    } catch (error) {
        console.error(`Received error while publishing: ${error.message}`);
        return `Received error while publishing: ${error.message}`;
    }
}

exports.handler = async (event) => {
    console.log("before", event);
    event = JSON.parse(event.body);
    console.log("body", event);
    let res = await publishMessage(
        event.email +
            "~" +
            event.data +
            "~" +
            event.persons +
            "~" +
            event.cost +
            "~" +
            event.duration
    );
    return {
        statusCode: 200,
        body: JSON.stringify(res),
    };
};
