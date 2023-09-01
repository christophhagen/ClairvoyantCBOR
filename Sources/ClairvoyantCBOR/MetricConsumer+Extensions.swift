import Foundation
import Clairvoyant
import CBORCoding

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public extension MetricConsumer {

    /**
     Create a metric consumer.

     - Parameter url: The url to the server where the metrics are exposed
     - Parameter accessProvider: The provider of access tokens to get metrics
     - Parameter session: The url session to use for the request
     - Parameter encoder: The encoder to use for encoding outgoing data
     - Parameter decoder: The decoder to decode received data
     */
    init(
        from url: URL,
        accessProvider: MetricRequestAccessProvider,
        session: URLSession = .shared,
        encoder: BinaryEncoder = CBOREncoder(dateEncodingStrategy: .secondsSince1970),
        decoder: BinaryDecoder = CBORDecoder()) {
            self.init(
                url: url,
                accessProvider: accessProvider,
                session: session,
                encoder: encoder,
                decoder: decoder)
    }
}
