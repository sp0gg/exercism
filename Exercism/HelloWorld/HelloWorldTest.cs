using NUnit.Framework;

namespace Exercism.HelloWorld
{
    [TestFixture]
    public class HelloWorldTest
    {
        [Test]
        public void No_name()
        {
            Assert.That(global::HelloWorld.HelloWorld.Hello(null), Is.EqualTo("Hello, World!"));
        }

        [Test]
        public void Sample_name()
        {
            Assert.That(global::HelloWorld.HelloWorld.Hello("Alice"), Is.EqualTo("Hello, Alice!"));
        }

        [Test]
        public void Other_sample_name()
        {
            Assert.That(global::HelloWorld.HelloWorld.Hello("Bob"), Is.EqualTo("Hello, Bob!"));
        }
    }
}
